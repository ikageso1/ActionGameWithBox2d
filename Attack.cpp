#include "Attack.h"
#include "Character.h"


Attack::Attack(int damage, int speed, int interval, Character* chara)
{
	damage_ = damage;
	speed_ = speed;
	interval_ = interval;
	interval_count_ = interval;
	chara_ = chara;
	attack_sound_ = 0;
}

Attack::Attack(int damage, int speed, int interval, Character* chara, char* sound_name)
{
	damage_ = damage;
	speed_ = speed;
	interval_ = interval;
	interval_count_ = interval;
	chara_ = chara;
	attack_sound_ = LoadSoundMem(sound_name);
}

void Attack::DoAttack(Bullet* bullet){
	//発射間隔の判定
	if(interval_count_ >= interval_){
		interval_count_ = 0; //発射間隔のカウントを0に
				PlaySound(); //音を鳴らす

		//bulltsが空なら新しく弾を生成
		if(bullets_.empty()){
			vector<Bullet*>::iterator end = bullets_.end();
			bullets_.insert(end,bullet);
		}
		
		//bulletsの中にaliveがfalseのものを探す
		else{
			int count = -1;
			for(int i=0; i<bullets_.size(); i++){
				if(!bullets_.at(i)->isAlive()){
					count = i;
					break;
				}
			}	
			//全ての弾が生きている(alive_==true)な場合新しく弾を生成
			if(count == -1){
				vector<Bullet*>::iterator end = bullets_.end();
				bullets_.insert(end, bullet);
			}
			//死んでいる弾(alive_==false)がある場合その弾を再利用
			else{
				InitializeBullet(count);
				delete bullet;
			}
		}

	}
}


void Attack::ThinkBullets(){
	for(int i=0; i<(int)bullets_.size(); i++){
		bullets_.at(i)->Think();
		bullets_.at(i)->DieBullet();
	}
	interval_count_++;
}

void Attack::MoveBullets(){
	for(int i=0; i<(int)bullets_.size(); i++){
		bullets_.at(i)->Move();
	}
}

void Attack::DrawBullets(int offset){
	for(int i=0; i<bullets_.size(); i++){
		bullets_.at(i)->Draw(offset);
	}
}

int Attack::GetBulletsSize(){
	if(bullets_.empty())
		return 0;
	else
		return (int)bullets_.size();
}

void Attack::ResetBullets(){
	for(int i=0; i<(int)bullets_.size(); i++){
		bullets_.at(i)->Die();
	}
}

void Attack::PlaySound(){
	if(attack_sound_ != 0)
		PlaySoundMem(attack_sound_,DX_PLAYTYPE_BACK);
}

Attack::~Attack(void)
{
	for(int i=(int)bullets_.size()-1; i>=0; i--){
		delete bullets_.at(i);
	}
}
#pragma once

#include "Bullet.h"
#include <vector>
using namespace std;

class Character;

class Attack
{
public:
	Attack(int damage, int speed, int interval, Character* chara); //�R���X�g���N�^
	Attack(int damage, int speed, int interval, Character* charam, char* sound_name); //�R���X�g���N�^
	virtual void DoAttack() = 0;
	void DoAttack(Bullet* bullet); //�e�������(���˂ł��Ȃ��ꍇ��false��Ԃ�)
	virtual void InitializeBullet(int num) = 0; //�����Ŏw�肵���e��������
	void ThinkBullets(); //�����Ă���S�Ă̒e��Think
	void MoveBullets();
	void DrawBullets(int offset);//�e��`��
	void ResetBullets();//�S�Ă̒e������
	void PlaySound(); //���ˉ����o��
	~Attack(void);

	//�Q�b�^�[
	vector<Bullet*> bullets(){return bullets_;}
	int GetBulletsSize();
	
protected:
	vector<Bullet*> bullets_;//�e
	Character* chara_; //���̃A�^�b�N�N���X�������Ă���L�����N�^�[
	int damage_;
	int speed_;
	int interval_; //�e�̔��ˊԊu�i�O�̏ꍇ���A�ˏ�ԁj
	int interval_count_;//���ˊԊu�̃J�E���^�[
	int attack_sound_; //���ˉ�
};


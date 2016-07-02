#pragma once

#include "DxLib.h"
#include "LoadGraphic.h"


/*
�u���́v�̒��ۃN���X
�G�L�����N�^�[�⎩�@�A�A�C�e���Ȃǂ̋��ʕ������܂Ƃ߂Ă���B
*/

//�v���C���[���G���A�C�e�����𔻒f����悤
enum ObjectType{O_PLAYER,O_ENEMY,O_ITEM};

//�Q����������킷�\���́Bx����y�����܂Ƃ߂Ă���B
typedef struct{
	double x;
	double y;
}TwoDimension;

class AObject{
public:
	//�R���X�g���N�^
	//x���W�A�����W�A�t�@�C�����i�摜/�摜�t�@�C����,�I�u�W�F�N�g�̓����蕝,�I�u�W�F�N�g�̍���,�����i�E�����Ȃ�true�j
	AObject(double ax,double ay,char* fname,int hit_size_x,int hit_size_y,bool right);
	virtual ~AObject();
	virtual void Reset(); //���Z�b�g����
	virtual void Move();                  //���g�̃X�s�[�h���ړ�����
	virtual void Draw(int offset);   //offset���g���Ď��g�̕`��ʒu���Z�o���ĕ`�悷��
	virtual void Think()=0;  //���g�̃X�s�[�h�𑀍삵�čs�������߂�
	void Fall(double gravity);  // �����̏d�͕�������
	void Die(); //�����t���O��false�ɂ���
	void Revival() {alive=true;} //�����t���O��true�ɂ���
	void change_speed(double,double);//�l���Ă���X�s�[�h(x:����e�� y:�W�����v����e���@�Ȃ�)
	void Set_Speed(double speed_x,double speed_y); //�X�s�[�h��ݒ肷��

	void TouchedBlockX(double set_x); //x���Ńu���b�N�ƐڐG�����ꍇ�ɌĂяo��
	void TouchedBlockY(double set_y); //y���Ńu���b�N�ƐڐG�����ꍇ�ɌĂяo��

	void GetObjectSize();//�I�u�W�F�N�g�̃T�C�Y���摜����ǂݎ��

	double GetCenterPosX(); //�I�u�W�F�N�g�̒��S���W��Ԃ�
	double GetCenterPosY(); //�I�u�W�F�N�g�̒��S���W��Ԃ�

	//�Q�b�^�[
	TwoDimension pos() {return pos_;}
	TwoDimension speed() {return speed_; }
	TwoDimension size() {return size_;}
	TwoDimension hit_size() {return hit_size_;}
	bool isAerial() {return aerial;}
	bool isRight() {return right;}
	bool isAlive() {return alive;}
	int object_type(){return object_type_;}

	void Set_move_power(double x);

protected:
	int live_count_;//�������ꂽ����o�߂�������
	int graphic_handle_;  //�ǂ̃������ɉ摜���ǂݍ��܂�Ă��邩��\���n���h��
	int move_ghandle_; //�ړ��A�j���[�V�����p�摜
	TwoDimension pos_; //x,y���W
	TwoDimension first_pos_; //������x,y���W
	TwoDimension speed_; //x,y���̃X�s�[�h
	TwoDimension size_; //�I�u�W�F�N�g�̂������̕��ƁAy�����̍���
	TwoDimension hit_size_;//�����蔻��̔{���T�C�Y
	double move_power;//x���ړ��̃X�s�[�h
	bool alive; //�������Ă����true
	bool right; //������\���B�E�����Ȃ�true�B�������Ȃ�false
	bool first_right;//�����̌���
	bool aerial; //�󒆂ɂ���Ȃ�true�B�n�ʂɐڂ��Ă���Ȃ�false
	int object_type_;//�ǂ̃I�u�W�F�N�g�����f�p

	static LoadGraphic loadg;  //�摜�̃������Ǘ������邽�߂̃N���X

private:


};
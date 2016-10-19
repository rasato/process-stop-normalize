-- �������DB���w��;
CONNECT TO SAMPLE2;
-- ��ʃ��[�U�̃X�L�[�}���w��;
SET SCHEMA sample;
CREATE TABLE BATCH_REQUEST (
  BATCH_REQUEST_ID VARCHAR(100) NOT NULL,
  BATCH_REQUEST_NAME VARCHAR(100) NOT NULL,
  PROCESS_HALT_FLG CHARACTER(1) NOT NULL,
  PROCESS_ACTIVE_FLG CHARACTER(1) NOT NULL,
  SERVICE_AVAILABLE CHARACTER(1) NOT NULL,
  RESUME_POINT BIGINT NOT NULL
);
COMMENT ON table BATCH_REQUEST is '�o�b�`���N�G�X�g';
COMMENT ON column BATCH_REQUEST.BATCH_REQUEST_ID is '�o�b�`���N�G�X�gID';
COMMENT ON column BATCH_REQUEST.BATCH_REQUEST_NAME is '���N�G�X�g��';
COMMENT ON column BATCH_REQUEST.PROCESS_HALT_FLG is '������~�t���O';
COMMENT ON column BATCH_REQUEST.PROCESS_ACTIVE_FLG is '�A�N�e�B�u�t���O';
COMMENT ON column BATCH_REQUEST.SERVICE_AVAILABLE is '�T�[�r�X�񋟉ۏ��';
COMMENT ON column BATCH_REQUEST.RESUME_POINT is '���W���[���|�C���g';
CREATE TABLE BUSINESS_DATE (
  SEGMENT_ID CHARACTER(2) NOT NULL,
  BIZ_DATE CHARACTER(8) NOT NULL
);
COMMENT ON table BUSINESS_DATE is '�Ɩ����t';
COMMENT ON column BUSINESS_DATE.SEGMENT_ID is '�Z�O�����gID';
COMMENT ON column BUSINESS_DATE.BIZ_DATE is '�Ɩ����t';
CREATE TABLE CODE_NAME (
  CODE_ID CHARACTER(8) NOT NULL,
  CODE_VALUE VARCHAR(2) NOT NULL,
  LANG CHARACTER(2) NOT NULL,
  SORT_ORDER SMALLINT NOT NULL,
  CODE_NAME VARCHAR(50) NOT NULL,
  SHORT_NAME VARCHAR(50),
  OPTION01 VARCHAR(50),
  OPTION02 VARCHAR(50),
  OPTION03 VARCHAR(50),
  OPTION04 VARCHAR(50),
  OPTION05 VARCHAR(50),
  OPTION06 VARCHAR(50),
  OPTION07 VARCHAR(50),
  OPTION08 VARCHAR(50),
  OPTION09 VARCHAR(50),
  OPTION10 VARCHAR(50)
);
COMMENT ON table CODE_NAME is '�R�[�h����';
COMMENT ON column CODE_NAME.CODE_ID is '�R�[�hID';
COMMENT ON column CODE_NAME.CODE_VALUE is '�R�[�h�l';
COMMENT ON column CODE_NAME.LANG is '����';
COMMENT ON column CODE_NAME.SORT_ORDER is '�\�[�g��';
COMMENT ON column CODE_NAME.CODE_NAME is '����';
COMMENT ON column CODE_NAME.SHORT_NAME is '�R�[�h����';
COMMENT ON column CODE_NAME.OPTION01 is '�I�v�V��������01';
COMMENT ON column CODE_NAME.OPTION02 is '�I�v�V��������02';
COMMENT ON column CODE_NAME.OPTION03 is '�I�v�V��������03';
COMMENT ON column CODE_NAME.OPTION04 is '�I�v�V��������04';
COMMENT ON column CODE_NAME.OPTION05 is '�I�v�V��������05';
COMMENT ON column CODE_NAME.OPTION06 is '�I�v�V��������06';
COMMENT ON column CODE_NAME.OPTION07 is '�I�v�V��������07';
COMMENT ON column CODE_NAME.OPTION08 is '�I�v�V��������08';
COMMENT ON column CODE_NAME.OPTION09 is '�I�v�V��������09';
COMMENT ON column CODE_NAME.OPTION10 is '�I�v�V��������10';
CREATE TABLE CODE_PATTERN (
  CODE_ID CHARACTER(8) NOT NULL,
  CODE_VALUE VARCHAR(2) NOT NULL,
  PATTERN01 CHARACTER(1) NOT NULL,
  PATTERN02 CHARACTER(1),
  PATTERN03 CHARACTER(1),
  PATTERN04 CHARACTER(1),
  PATTERN05 CHARACTER(1),
  PATTERN06 CHARACTER(1),
  PATTERN07 CHARACTER(1),
  PATTERN08 CHARACTER(1),
  PATTERN09 CHARACTER(1),
  PATTERN10 CHARACTER(1),
  PATTERN11 CHARACTER(1),
  PATTERN12 CHARACTER(1),
  PATTERN13 CHARACTER(1),
  PATTERN14 CHARACTER(1),
  PATTERN15 CHARACTER(1),
  PATTERN16 CHARACTER(1),
  PATTERN17 CHARACTER(1),
  PATTERN18 CHARACTER(1),
  PATTERN19 CHARACTER(1),
  PATTERN20 CHARACTER(1)
);
COMMENT ON table CODE_PATTERN is '�R�[�h�p�^�[��';
COMMENT ON column CODE_PATTERN.CODE_ID is '�R�[�hID';
COMMENT ON column CODE_PATTERN.CODE_VALUE is '�R�[�h�l';
COMMENT ON column CODE_PATTERN.PATTERN01 is '�p�^�[��01';
COMMENT ON column CODE_PATTERN.PATTERN02 is '�p�^�[��02';
COMMENT ON column CODE_PATTERN.PATTERN03 is '�p�^�[��03';
COMMENT ON column CODE_PATTERN.PATTERN04 is '�p�^�[��04';
COMMENT ON column CODE_PATTERN.PATTERN05 is '�p�^�[��05';
COMMENT ON column CODE_PATTERN.PATTERN06 is '�p�^�[��06';
COMMENT ON column CODE_PATTERN.PATTERN07 is '�p�^�[��07';
COMMENT ON column CODE_PATTERN.PATTERN08 is '�p�^�[��08';
COMMENT ON column CODE_PATTERN.PATTERN09 is '�p�^�[��09';
COMMENT ON column CODE_PATTERN.PATTERN10 is '�p�^�[��10';
COMMENT ON column CODE_PATTERN.PATTERN11 is '�p�^�[��11';
COMMENT ON column CODE_PATTERN.PATTERN12 is '�p�^�[��12';
COMMENT ON column CODE_PATTERN.PATTERN13 is '�p�^�[��13';
COMMENT ON column CODE_PATTERN.PATTERN14 is '�p�^�[��14';
COMMENT ON column CODE_PATTERN.PATTERN15 is '�p�^�[��15';
COMMENT ON column CODE_PATTERN.PATTERN16 is '�p�^�[��16';
COMMENT ON column CODE_PATTERN.PATTERN17 is '�p�^�[��17';
COMMENT ON column CODE_PATTERN.PATTERN18 is '�p�^�[��18';
COMMENT ON column CODE_PATTERN.PATTERN19 is '�p�^�[��19';
COMMENT ON column CODE_PATTERN.PATTERN20 is '�p�^�[��20';
CREATE TABLE MAIL_ATTACHED_FILE (
  MAIL_REQUEST_ID VARCHAR(20) NOT NULL,
  SERIAL_NUMBER NUMERIC(10) NOT NULL,
  FILE_NAME VARCHAR(150) NOT NULL,
  CONTENT_TYPE VARCHAR(50) NOT NULL,
  ATTACHED_FILE BLOB NOT NULL
);
COMMENT ON table MAIL_ATTACHED_FILE is '���[���Y�t�t�@�C��';
COMMENT ON column MAIL_ATTACHED_FILE.MAIL_REQUEST_ID is '���[�����M�v��ID';
COMMENT ON column MAIL_ATTACHED_FILE.SERIAL_NUMBER is '�A��';
COMMENT ON column MAIL_ATTACHED_FILE.FILE_NAME is '�Y�t�t�@�C����';
COMMENT ON column MAIL_ATTACHED_FILE.CONTENT_TYPE is '�Y�t�t�@�C��CONTENT-TYPE';
COMMENT ON column MAIL_ATTACHED_FILE.ATTACHED_FILE is '�Y�t�t�@�C��';
CREATE TABLE MAIL_RECIPIENT (
  MAIL_REQUEST_ID VARCHAR(20) NOT NULL,
  SERIAL_NUMBER BIGINT NOT NULL,
  RECIPIENT_TYPE CHARACTER(1) NOT NULL,
  MAIL_ADDRESS VARCHAR(254) NOT NULL
);
COMMENT ON table MAIL_RECIPIENT is '���[�����M��';
COMMENT ON column MAIL_RECIPIENT.MAIL_REQUEST_ID is '���[�����M�v��ID';
COMMENT ON column MAIL_RECIPIENT.SERIAL_NUMBER is '�A��';
COMMENT ON column MAIL_RECIPIENT.RECIPIENT_TYPE is '���M��敪';
COMMENT ON column MAIL_RECIPIENT.MAIL_ADDRESS is '���[���A�h���X';
CREATE TABLE MAIL_REQUEST (
  MAIL_REQUEST_ID VARCHAR(20) NOT NULL,
  MAIL_SEND_PATTERN_ID VARCHAR(2),
  SUBJECT VARCHAR(150) NOT NULL,
  MAIL_BODY VARCHAR(4000) NOT NULL,
  MAIL_FROM VARCHAR(254) NOT NULL,
  REPLY_TO VARCHAR(254) NOT NULL,
  RETURN_PATH VARCHAR(254) NOT NULL,
  CHARSET VARCHAR(50) NOT NULL,
  STATUS CHARACTER(1) NOT NULL,
  REQUEST_DATETIME TIMESTAMP,
  SEND_DATETIME TIMESTAMP
);
COMMENT ON table MAIL_REQUEST is '���[�����M�v��';
COMMENT ON column MAIL_REQUEST.MAIL_REQUEST_ID is '���[�����M�v��ID';
COMMENT ON column MAIL_REQUEST.MAIL_SEND_PATTERN_ID is '���[�����M�p�^�[��ID';
COMMENT ON column MAIL_REQUEST.SUBJECT is '����';
COMMENT ON column MAIL_REQUEST.MAIL_BODY is '�{��';
COMMENT ON column MAIL_REQUEST.MAIL_FROM is '���M�҃��[���A�h���X';
COMMENT ON column MAIL_REQUEST.REPLY_TO is '�ԐM�惁�[���A�h���X';
COMMENT ON column MAIL_REQUEST.RETURN_PATH is '���߂��惁�[���A�h���X';
COMMENT ON column MAIL_REQUEST.CHARSET is '�����Z�b�g';
COMMENT ON column MAIL_REQUEST.STATUS is '�X�e�[�^�X';
COMMENT ON column MAIL_REQUEST.REQUEST_DATETIME is '�v������';
COMMENT ON column MAIL_REQUEST.SEND_DATETIME is '���M����';
CREATE TABLE MAIL_TEMPLATE (
  MAIL_TEMPLATE_ID VARCHAR(10) NOT NULL,
  LANG CHARACTER(2) NOT NULL,
  SUBJECT VARCHAR(150) NOT NULL,
  MAIL_BODY LONG VARCHAR NOT NULL,
  CHARSET VARCHAR(50) NOT NULL
);
COMMENT ON table MAIL_TEMPLATE is '���[���e���v���[�g';
COMMENT ON column MAIL_TEMPLATE.MAIL_TEMPLATE_ID is '���[���e���v���[�gID';
COMMENT ON column MAIL_TEMPLATE.LANG is '����';
COMMENT ON column MAIL_TEMPLATE.SUBJECT is '����';
COMMENT ON column MAIL_TEMPLATE.MAIL_BODY is '�{��';
COMMENT ON column MAIL_TEMPLATE.CHARSET is '�����Z�b�g';
CREATE TABLE SAMPLE_USER (
  USER_INFO_ID CHARACTER(20) NOT NULL,
  LOGIN_ID VARCHAR(20) NOT NULL,
  KANJI_NAME VARCHAR(50) NOT NULL,
  KANA_NAME VARCHAR(50) NOT NULL,
  STATUS CHARACTER(1) NOT NULL
);
COMMENT ON table SAMPLE_USER is '�T���v�����[�U���';
COMMENT ON column SAMPLE_USER.USER_INFO_ID is '���[�U���ID';
COMMENT ON column SAMPLE_USER.LOGIN_ID is '���O�C��ID';
COMMENT ON column SAMPLE_USER.KANJI_NAME is '��������';
COMMENT ON column SAMPLE_USER.KANA_NAME is '���Ȏ���';
COMMENT ON column SAMPLE_USER.STATUS is '�X�e�[�^�X';
ALTER TABLE BUSINESS_DATE
ADD CONSTRAINT PK_BUSINESS_DATE PRIMARY KEY
(
  SEGMENT_ID
);
ALTER TABLE SAMPLE_USER
ADD CONSTRAINT PK_SAMPLE_USER_INFO PRIMARY KEY
(
  USER_INFO_ID
);
ALTER TABLE MAIL_TEMPLATE
ADD CONSTRAINT PK_���[���e���v���[�g PRIMARY KEY
(
  MAIL_TEMPLATE_ID,
  LANG
);
ALTER TABLE MAIL_ATTACHED_FILE
ADD CONSTRAINT PK_���[���Y�t�t�@�C�� PRIMARY KEY
(
  MAIL_REQUEST_ID,
  SERIAL_NUMBER
);
ALTER TABLE MAIL_RECIPIENT
ADD CONSTRAINT PK_���[�����M�� PRIMARY KEY
(
  MAIL_REQUEST_ID,
  SERIAL_NUMBER
);
ALTER TABLE MAIL_REQUEST
ADD CONSTRAINT PK_���[�����M�v�� PRIMARY KEY
(
  MAIL_REQUEST_ID
);
ALTER TABLE CODE_PATTERN
ADD CONSTRAINT SYS_C0058550 PRIMARY KEY
(
  CODE_ID,
  CODE_VALUE
);
ALTER TABLE CODE_NAME
ADD CONSTRAINT SYS_C0058560 PRIMARY KEY
(
  CODE_ID,
  CODE_VALUE,
  LANG
);
ALTER TABLE BATCH_REQUEST
ADD CONSTRAINT SYS_C0058579 PRIMARY KEY
(
  BATCH_REQUEST_ID
);
ALTER TABLE CODE_NAME
ADD
FOREIGN KEY (
  CODE_ID,
  CODE_VALUE
) REFERENCES CODE_PATTERN (
  CODE_ID,
  CODE_VALUE
);
ALTER TABLE MAIL_ATTACHED_FILE
ADD
FOREIGN KEY (
  MAIL_REQUEST_ID
) REFERENCES MAIL_REQUEST (
  MAIL_REQUEST_ID
);
ALTER TABLE MAIL_RECIPIENT
ADD
FOREIGN KEY (
  MAIL_REQUEST_ID
) REFERENCES MAIL_REQUEST (
  MAIL_REQUEST_ID
);
CREATE TABLE BATCH_REQUEST (
  BATCH_REQUEST_ID VARCHAR2(100 CHAR) NOT NULL ,
  BATCH_REQUEST_NAME VARCHAR2(100 CHAR) NOT NULL ,
  PROCESS_HALT_FLG CHAR(1 CHAR) NOT NULL ,
  PROCESS_ACTIVE_FLG CHAR(1 CHAR) NOT NULL ,
  SERVICE_AVAILABLE CHAR(1 CHAR) NOT NULL ,
  RESUME_POINT NUMBER(10) NOT NULL
);
COMMENT ON table BATCH_REQUEST is 'バッチリクエスト';
COMMENT ON column BATCH_REQUEST.BATCH_REQUEST_ID is 'バッチリクエストID';
COMMENT ON column BATCH_REQUEST.BATCH_REQUEST_NAME is 'リクエスト名';
COMMENT ON column BATCH_REQUEST.PROCESS_HALT_FLG is '処理停止フラグ';
COMMENT ON column BATCH_REQUEST.PROCESS_ACTIVE_FLG is 'アクティブフラグ';
COMMENT ON column BATCH_REQUEST.SERVICE_AVAILABLE is 'サービス提供可否状態';
COMMENT ON column BATCH_REQUEST.RESUME_POINT is 'レジュームポイント';
CREATE TABLE BUSINESS_DATE (
  SEGMENT_ID CHAR(2 CHAR) NOT NULL ,
  BIZ_DATE CHAR(8 CHAR) NOT NULL
);
COMMENT ON table BUSINESS_DATE is '業務日付';
COMMENT ON column BUSINESS_DATE.SEGMENT_ID is 'セグメントID';
COMMENT ON column BUSINESS_DATE.BIZ_DATE is '業務日付';
CREATE TABLE CODE_NAME (
  CODE_ID CHAR(8 CHAR) NOT NULL ,
  CODE_VALUE VARCHAR2(2 CHAR) NOT NULL ,
  LANG CHAR(2 CHAR) NOT NULL ,
  SORT_ORDER NUMBER(2) NOT NULL ,
  CODE_NAME VARCHAR2(50 CHAR) NOT NULL ,
  SHORT_NAME VARCHAR2(50 CHAR),
  OPTION01 VARCHAR2(50 CHAR),
  OPTION02 VARCHAR2(50 CHAR),
  OPTION03 VARCHAR2(50 CHAR),
  OPTION04 VARCHAR2(50 CHAR),
  OPTION05 VARCHAR2(50 CHAR),
  OPTION06 VARCHAR2(50 CHAR),
  OPTION07 VARCHAR2(50 CHAR),
  OPTION08 VARCHAR2(50 CHAR),
  OPTION09 VARCHAR2(50 CHAR),
  OPTION10 VARCHAR2(50 CHAR)
);
COMMENT ON table CODE_NAME is 'コード名称';
COMMENT ON column CODE_NAME.CODE_ID is 'コードID';
COMMENT ON column CODE_NAME.CODE_VALUE is 'コード値';
COMMENT ON column CODE_NAME.LANG is '言語';
COMMENT ON column CODE_NAME.SORT_ORDER is 'ソート順';
COMMENT ON column CODE_NAME.CODE_NAME is '名称';
COMMENT ON column CODE_NAME.SHORT_NAME is 'コード略称';
COMMENT ON column CODE_NAME.OPTION01 is 'オプション名称01';
COMMENT ON column CODE_NAME.OPTION02 is 'オプション名称02';
COMMENT ON column CODE_NAME.OPTION03 is 'オプション名称03';
COMMENT ON column CODE_NAME.OPTION04 is 'オプション名称04';
COMMENT ON column CODE_NAME.OPTION05 is 'オプション名称05';
COMMENT ON column CODE_NAME.OPTION06 is 'オプション名称06';
COMMENT ON column CODE_NAME.OPTION07 is 'オプション名称07';
COMMENT ON column CODE_NAME.OPTION08 is 'オプション名称08';
COMMENT ON column CODE_NAME.OPTION09 is 'オプション名称09';
COMMENT ON column CODE_NAME.OPTION10 is 'オプション名称10';
CREATE TABLE CODE_PATTERN (
  CODE_ID CHAR(8 CHAR) NOT NULL ,
  CODE_VALUE VARCHAR2(2 CHAR) NOT NULL ,
  PATTERN01 CHAR(1 CHAR) NOT NULL ,
  PATTERN02 CHAR(1 CHAR),
  PATTERN03 CHAR(1 CHAR),
  PATTERN04 CHAR(1 CHAR),
  PATTERN05 CHAR(1 CHAR),
  PATTERN06 CHAR(1 CHAR),
  PATTERN07 CHAR(1 CHAR),
  PATTERN08 CHAR(1 CHAR),
  PATTERN09 CHAR(1 CHAR),
  PATTERN10 CHAR(1 CHAR),
  PATTERN11 CHAR(1 CHAR),
  PATTERN12 CHAR(1 CHAR),
  PATTERN13 CHAR(1 CHAR),
  PATTERN14 CHAR(1 CHAR),
  PATTERN15 CHAR(1 CHAR),
  PATTERN16 CHAR(1 CHAR),
  PATTERN17 CHAR(1 CHAR),
  PATTERN18 CHAR(1 CHAR),
  PATTERN19 CHAR(1 CHAR),
  PATTERN20 CHAR(1 CHAR)
);
COMMENT ON table CODE_PATTERN is 'コードパターン';
COMMENT ON column CODE_PATTERN.CODE_ID is 'コードID';
COMMENT ON column CODE_PATTERN.CODE_VALUE is 'コード値';
COMMENT ON column CODE_PATTERN.PATTERN01 is 'パターン01';
COMMENT ON column CODE_PATTERN.PATTERN02 is 'パターン02';
COMMENT ON column CODE_PATTERN.PATTERN03 is 'パターン03';
COMMENT ON column CODE_PATTERN.PATTERN04 is 'パターン04';
COMMENT ON column CODE_PATTERN.PATTERN05 is 'パターン05';
COMMENT ON column CODE_PATTERN.PATTERN06 is 'パターン06';
COMMENT ON column CODE_PATTERN.PATTERN07 is 'パターン07';
COMMENT ON column CODE_PATTERN.PATTERN08 is 'パターン08';
COMMENT ON column CODE_PATTERN.PATTERN09 is 'パターン09';
COMMENT ON column CODE_PATTERN.PATTERN10 is 'パターン10';
COMMENT ON column CODE_PATTERN.PATTERN11 is 'パターン11';
COMMENT ON column CODE_PATTERN.PATTERN12 is 'パターン12';
COMMENT ON column CODE_PATTERN.PATTERN13 is 'パターン13';
COMMENT ON column CODE_PATTERN.PATTERN14 is 'パターン14';
COMMENT ON column CODE_PATTERN.PATTERN15 is 'パターン15';
COMMENT ON column CODE_PATTERN.PATTERN16 is 'パターン16';
COMMENT ON column CODE_PATTERN.PATTERN17 is 'パターン17';
COMMENT ON column CODE_PATTERN.PATTERN18 is 'パターン18';
COMMENT ON column CODE_PATTERN.PATTERN19 is 'パターン19';
COMMENT ON column CODE_PATTERN.PATTERN20 is 'パターン20';
CREATE TABLE MAIL_ATTACHED_FILE (
  MAIL_REQUEST_ID VARCHAR2(20 CHAR) NOT NULL ,
  SERIAL_NUMBER NUMBER(10) NOT NULL ,
  FILE_NAME VARCHAR2(150 CHAR) NOT NULL ,
  CONTENT_TYPE VARCHAR2(50 CHAR) NOT NULL ,
  ATTACHED_FILE BLOB NOT NULL
);
COMMENT ON table MAIL_ATTACHED_FILE is 'メール添付ファイル';
COMMENT ON column MAIL_ATTACHED_FILE.MAIL_REQUEST_ID is 'メール送信要求ID';
COMMENT ON column MAIL_ATTACHED_FILE.SERIAL_NUMBER is '連番';
COMMENT ON column MAIL_ATTACHED_FILE.FILE_NAME is '添付ファイル名';
COMMENT ON column MAIL_ATTACHED_FILE.CONTENT_TYPE is '添付ファイルCONTENT-TYPE';
COMMENT ON column MAIL_ATTACHED_FILE.ATTACHED_FILE is '添付ファイル';
CREATE TABLE MAIL_RECIPIENT (
  MAIL_REQUEST_ID VARCHAR2(20 CHAR) NOT NULL ,
  SERIAL_NUMBER NUMBER(10) NOT NULL ,
  RECIPIENT_TYPE CHAR(1 CHAR) NOT NULL ,
  MAIL_ADDRESS VARCHAR2(254 CHAR) NOT NULL
);
COMMENT ON table MAIL_RECIPIENT is 'メール送信先';
COMMENT ON column MAIL_RECIPIENT.MAIL_REQUEST_ID is 'メール送信要求ID';
COMMENT ON column MAIL_RECIPIENT.SERIAL_NUMBER is '連番';
COMMENT ON column MAIL_RECIPIENT.RECIPIENT_TYPE is '送信先区分';
COMMENT ON column MAIL_RECIPIENT.MAIL_ADDRESS is 'メールアドレス';
CREATE TABLE MAIL_REQUEST (
  MAIL_REQUEST_ID VARCHAR2(20 CHAR) NOT NULL ,
  MAIL_SEND_PATTERN_ID VARCHAR2(2 CHAR),
  SUBJECT VARCHAR2(150 CHAR) NOT NULL ,
  MAIL_BODY VARCHAR2(4000 CHAR) NOT NULL ,
  MAIL_FROM VARCHAR2(254 CHAR) NOT NULL ,
  REPLY_TO VARCHAR2(254 CHAR) NOT NULL ,
  RETURN_PATH VARCHAR2(254 CHAR) NOT NULL ,
  CHARSET VARCHAR2(50 CHAR) NOT NULL ,
  STATUS CHAR(1 CHAR) NOT NULL ,
  REQUEST_DATETIME TIMESTAMP,
  SEND_DATETIME TIMESTAMP
);
COMMENT ON table MAIL_REQUEST is 'メール送信要求';
COMMENT ON column MAIL_REQUEST.MAIL_REQUEST_ID is 'メール送信要求ID';
COMMENT ON column MAIL_REQUEST.MAIL_SEND_PATTERN_ID is 'メール送信パターンID';
COMMENT ON column MAIL_REQUEST.SUBJECT is '件名';
COMMENT ON column MAIL_REQUEST.MAIL_BODY is '本文';
COMMENT ON column MAIL_REQUEST.MAIL_FROM is '送信者メールアドレス';
COMMENT ON column MAIL_REQUEST.REPLY_TO is '返信先メールアドレス';
COMMENT ON column MAIL_REQUEST.RETURN_PATH is '差戻し先メールアドレス';
COMMENT ON column MAIL_REQUEST.CHARSET is '文字セット';
COMMENT ON column MAIL_REQUEST.STATUS is 'ステータス';
COMMENT ON column MAIL_REQUEST.REQUEST_DATETIME is '要求日時';
COMMENT ON column MAIL_REQUEST.SEND_DATETIME is '送信日時';
CREATE TABLE MAIL_TEMPLATE (
  MAIL_TEMPLATE_ID VARCHAR2(10 CHAR) NOT NULL ,
  LANG CHAR(2 CHAR) NOT NULL ,
  SUBJECT VARCHAR2(150 CHAR) NOT NULL ,
  MAIL_BODY NCLOB NOT NULL ,
  CHARSET VARCHAR2(50 CHAR) NOT NULL
);
COMMENT ON table MAIL_TEMPLATE is 'メールテンプレート';
COMMENT ON column MAIL_TEMPLATE.MAIL_TEMPLATE_ID is 'メールテンプレートID';
COMMENT ON column MAIL_TEMPLATE.LANG is '言語';
COMMENT ON column MAIL_TEMPLATE.SUBJECT is '件名';
COMMENT ON column MAIL_TEMPLATE.MAIL_BODY is '本文';
COMMENT ON column MAIL_TEMPLATE.CHARSET is '文字セット';
CREATE TABLE SAMPLE_USER (
  USER_INFO_ID CHAR(20 CHAR) NOT NULL ,
  LOGIN_ID VARCHAR2(20 CHAR) NOT NULL ,
  KANJI_NAME NVARCHAR2(50) NOT NULL ,
  KANA_NAME NVARCHAR2(50) NOT NULL ,
  STATUS CHAR(1 CHAR) NOT NULL
);
COMMENT ON table SAMPLE_USER is 'サンプルユーザ情報';
COMMENT ON column SAMPLE_USER.USER_INFO_ID is 'ユーザ情報ID';
COMMENT ON column SAMPLE_USER.LOGIN_ID is 'ログインID';
COMMENT ON column SAMPLE_USER.KANJI_NAME is '漢字氏名';
COMMENT ON column SAMPLE_USER.KANA_NAME is 'かな氏名';
COMMENT ON column SAMPLE_USER.STATUS is 'ステータス';
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
ADD CONSTRAINT PK_メールテンプレート PRIMARY KEY
(
  MAIL_TEMPLATE_ID,
  LANG
);
ALTER TABLE MAIL_ATTACHED_FILE
ADD CONSTRAINT PK_メール添付ファイル PRIMARY KEY
(
  MAIL_REQUEST_ID,
  SERIAL_NUMBER
);
ALTER TABLE MAIL_RECIPIENT
ADD CONSTRAINT PK_メール送信先 PRIMARY KEY
(
  MAIL_REQUEST_ID,
  SERIAL_NUMBER
);
ALTER TABLE MAIL_REQUEST
ADD CONSTRAINT PK_メール送信要求 PRIMARY KEY
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

.class public Lcom/shandagames/gameplus/push/SocketPushService;
.super Landroid/app/Service;


# static fields
.field public static final CHECK_BEAT_CHECK:I = 0x41d

.field public static final CHECK_BEAT_CHECK_2:I = 0x431

.field public static final CHECK_BEAT_FAILURE:I = 0x41c

.field public static final CHECK_BEAT_START:I = 0x41a

.field public static final CHECK_BEAT_START_2:I = 0x42e

.field public static final CHECK_BEAT_SUCCESS:I = 0x41b

.field public static final CREATE_SOCKET_FAILURE:I = 0x3f4

.field public static final CREATE_SOCKET_START:I = 0x3f2

.field public static final CREATE_SOCKET_SUCCESS:I = 0x3f3

.field public static final GET_MESSAGE_CHECK:I = 0x409

.field public static final GET_MESSAGE_FAILURE:I = 0x408

.field public static final GET_MESSAGE_START:I = 0x406

.field public static final GET_MESSAGE_SUCCESS:I = 0x407

.field public static final GET_PUSH_SERVER_INFO_FAILURE:I = 0x3ea

.field public static final GET_PUSH_SERVER_INFO_START:I = 0x3e8

.field public static final GET_PUSH_SERVER_INFO_SUCCESS:I = 0x3e9

.field public static final PUSH_CONTENT:Ljava/lang/String; = "PUSH_CONTENT"

.field public static final PUSH_TITLE:Ljava/lang/String; = "PUSH_TITLE"

.field public static final REGISTER_SOCKET_CHECK:I = 0x3ff

.field public static final REGISTER_SOCKET_FAILURE:I = 0x3fe

.field public static final REGISTER_SOCKET_START:I = 0x3fc

.field public static final REGISTER_SOCKET_SUCCESS:I = 0x3fd

.field public static final RESTART_CONNECT:I = 0x3df

.field public static final SEND_REPORT_FAILURE:I = 0x412

.field public static final SEND_REPORT_START:I = 0x410

.field public static final SEND_REPORT_SUCCESS:I = 0x411

.field public static final SOCKET_CLOSE:I = 0x424

.field public static final START_CONNECT:I = 0x3de

.field public static final STOP_CONNECT:I = 0x3e0

.field public static final TAG:Ljava/lang/String; = "SocketPushService"

.field public static final TIME_OUT_BEAT:I = 0x4e20

.field public static TIME_OUT_GET:I = 0x0

.field public static final TIME_OUT_REGISTER:I = 0x4e20

.field public static final UPDATE_LOG:I = 0x378

.field private static alarmMgr:Landroid/app/AlarmManager;

.field public static alarmMsg:I

.field private static clientid:Ljava/lang/String;

.field public static isNeedPush:Z

.field private static isStart_Check_Beat:Z

.field private static isStart_Get_Message:Z

.field public static isStop:Z

.field public static pushState:I


# instance fields
.field private checkBeatRunnable:Ljava/lang/Runnable;

.field private checkBeatRunnable2:Ljava/lang/Runnable;

.field private createSocketRunnable:Ljava/lang/Runnable;

.field private getMessageRunnable:Ljava/lang/Runnable;

.field protected mHandler:Landroid/os/Handler;

.field private mMessageModel:Lcom/shandagames/gameplus/model/MessageModel;

.field private mPushServerInfo:Lcom/shandagames/gameplus/model/PushServerInfo;

.field private mSocket:Ljava/net/Socket;

.field private registerRunnable:Ljava/lang/Runnable;

.field private sendMsgReportRunnable:Ljava/lang/Runnable;

.field testid:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x4e20

    sput v0, Lcom/shandagames/gameplus/push/SocketPushService;->TIME_OUT_GET:I

    sput-boolean v1, Lcom/shandagames/gameplus/push/SocketPushService;->isNeedPush:Z

    sput-boolean v1, Lcom/shandagames/gameplus/push/SocketPushService;->isStop:Z

    sput-boolean v2, Lcom/shandagames/gameplus/push/SocketPushService;->isStart_Check_Beat:Z

    sput-boolean v2, Lcom/shandagames/gameplus/push/SocketPushService;->isStart_Get_Message:Z

    sput v2, Lcom/shandagames/gameplus/push/SocketPushService;->alarmMsg:I

    const-string v0, "java.net.preferIPv4Stack"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.net.preferIPv6Addresses"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    sput v2, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mMessageModel:Lcom/shandagames/gameplus/model/MessageModel;

    new-instance v0, Lcom/shandagames/gameplus/push/SocketPushService$1;

    invoke-direct {v0, p0}, Lcom/shandagames/gameplus/push/SocketPushService$1;-><init>(Lcom/shandagames/gameplus/push/SocketPushService;)V

    iput-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/shandagames/gameplus/push/SocketPushService$2;

    invoke-direct {v0, p0}, Lcom/shandagames/gameplus/push/SocketPushService$2;-><init>(Lcom/shandagames/gameplus/push/SocketPushService;)V

    iput-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->createSocketRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/shandagames/gameplus/push/SocketPushService$3;

    invoke-direct {v0, p0}, Lcom/shandagames/gameplus/push/SocketPushService$3;-><init>(Lcom/shandagames/gameplus/push/SocketPushService;)V

    iput-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->checkBeatRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/shandagames/gameplus/push/SocketPushService$4;

    invoke-direct {v0, p0}, Lcom/shandagames/gameplus/push/SocketPushService$4;-><init>(Lcom/shandagames/gameplus/push/SocketPushService;)V

    iput-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->checkBeatRunnable2:Ljava/lang/Runnable;

    new-instance v0, Lcom/shandagames/gameplus/push/SocketPushService$5;

    invoke-direct {v0, p0}, Lcom/shandagames/gameplus/push/SocketPushService$5;-><init>(Lcom/shandagames/gameplus/push/SocketPushService;)V

    iput-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->getMessageRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/shandagames/gameplus/push/SocketPushService$6;

    invoke-direct {v0, p0}, Lcom/shandagames/gameplus/push/SocketPushService$6;-><init>(Lcom/shandagames/gameplus/push/SocketPushService;)V

    iput-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->sendMsgReportRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/shandagames/gameplus/push/SocketPushService$7;

    invoke-direct {v0, p0}, Lcom/shandagames/gameplus/push/SocketPushService$7;-><init>(Lcom/shandagames/gameplus/push/SocketPushService;)V

    iput-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->registerRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->testid:I

    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    sget-boolean v0, Lcom/shandagames/gameplus/push/SocketPushService;->isStart_Check_Beat:Z

    return v0
.end method

.method static synthetic access$1(Z)V
    .locals 0

    sput-boolean p0, Lcom/shandagames/gameplus/push/SocketPushService;->isStart_Check_Beat:Z

    return-void
.end method

.method static synthetic access$10(Lcom/shandagames/gameplus/push/SocketPushService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->createSocketRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$11(Lcom/shandagames/gameplus/push/SocketPushService;)Lcom/shandagames/gameplus/model/PushServerInfo;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mPushServerInfo:Lcom/shandagames/gameplus/model/PushServerInfo;

    return-object v0
.end method

.method static synthetic access$12(Lcom/shandagames/gameplus/push/SocketPushService;Ljava/net/Socket;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mSocket:Ljava/net/Socket;

    return-void
.end method

.method static synthetic access$13(Lcom/shandagames/gameplus/push/SocketPushService;)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mSocket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$14(Lcom/shandagames/gameplus/push/SocketPushService;)Lcom/shandagames/gameplus/model/MessageModel;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mMessageModel:Lcom/shandagames/gameplus/model/MessageModel;

    return-object v0
.end method

.method static synthetic access$15()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/shandagames/gameplus/push/SocketPushService;->clientid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/shandagames/gameplus/push/SocketPushService;Lcom/shandagames/gameplus/model/PushServerInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mPushServerInfo:Lcom/shandagames/gameplus/model/PushServerInfo;

    return-void
.end method

.method static synthetic access$17(Lcom/shandagames/gameplus/push/SocketPushService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/shandagames/gameplus/push/SocketPushService;->showNotification(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Z)V
    .locals 0

    sput-boolean p0, Lcom/shandagames/gameplus/push/SocketPushService;->isStart_Get_Message:Z

    return-void
.end method

.method static synthetic access$3(Lcom/shandagames/gameplus/push/SocketPushService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->checkBeatRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4(Lcom/shandagames/gameplus/push/SocketPushService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->checkBeatRunnable2:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5(Lcom/shandagames/gameplus/push/SocketPushService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->sendMsgReportRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6()Z
    .locals 1

    sget-boolean v0, Lcom/shandagames/gameplus/push/SocketPushService;->isStart_Get_Message:Z

    return v0
.end method

.method static synthetic access$7(Lcom/shandagames/gameplus/push/SocketPushService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->getMessageRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$8(Lcom/shandagames/gameplus/push/SocketPushService;Lcom/shandagames/gameplus/model/MessageModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shandagames/gameplus/push/SocketPushService;->showNotification(Lcom/shandagames/gameplus/model/MessageModel;)V

    return-void
.end method

.method static synthetic access$9(Lcom/shandagames/gameplus/push/SocketPushService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->registerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static actionQuickReStart(Landroid/content/Context;)V
    .locals 3

    const-string v0, "SocketPushService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Service actionQuickStart "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/shandagames/gameplus/push/SocketPushService;->isStop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shandagames/gameplus/log/LogDebugger;->info(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/shandagames/gameplus/push/SocketPushService;->isStop:Z

    if-nez v0, :cond_1

    sget v0, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    const/16 v1, 0x3df

    if-eq v0, v1, :cond_0

    sget v0, Lcom/shandagames/gameplus/push/SocketPushService;->pushState:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/shandagames/gameplus/push/SocketPushService;->isStop:Z

    invoke-static {p0}, Lcom/shandagames/gameplus/push/SocketPushService;->actionStart(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public static actionReceiverStart(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "SocketPushService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Service actionReceiverStart "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shandagames/gameplus/log/LogDebugger;->info(Ljava/lang/String;Ljava/lang/String;)V

    sput p1, Lcom/shandagames/gameplus/push/SocketPushService;->alarmMsg:I

    invoke-static {p0}, Lcom/shandagames/gameplus/push/SocketPushService;->actionStart(Landroid/content/Context;)V

    return-void
.end method

.method public static actionStart(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/shandagames/gameplus/util/EnvUtil;->setApplicationContext(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/shandagames/gameplus/push/SocketPushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static actionStart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/shandagames/gameplus/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p1, Lcom/shandagames/gameplus/push/SocketPushService;->clientid:Ljava/lang/String;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "push_clientid"

    sget-object v2, Lcom/shandagames/gameplus/push/SocketPushService;->clientid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    invoke-static {p0}, Lcom/shandagames/gameplus/push/SocketPushService;->actionStart(Landroid/content/Context;)V

    return-void
.end method

.method public static actionStop(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/shandagames/gameplus/push/SocketPushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method private doStart()V
    .locals 3

    const-string v0, "SocketPushService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Service do start "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/shandagames/gameplus/push/SocketPushService;->isStop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " alarmMsg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/shandagames/gameplus/push/SocketPushService;->alarmMsg:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shandagames/gameplus/log/LogDebugger;->info(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/shandagames/gameplus/push/SocketPushService;->isStop:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/shandagames/gameplus/push/SocketPushService;->isStop:Z

    const/16 v0, 0x3de

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/shandagames/gameplus/push/SocketPushService;->alarmMsg:I

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    goto :goto_0
.end method

.method public static getCurrentPushNId(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "push_nid"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getIsNeedPush(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isNeedPush"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/shandagames/gameplus/push/SocketPushService;->isNeedPush:Z

    return v0
.end method

.method public static getPushMsgCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/shandagames/gameplus/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getPushMsgNId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    invoke-static {p1}, Lcom/shandagames/gameplus/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "push_nid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {p0}, Lcom/shandagames/gameplus/push/SocketPushService;->getCurrentPushNId(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static resetMsgCount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shandagames/gameplus/push/SocketPushService;->setPushMsgCount(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static setCurrentPushNId(Landroid/content/Context;I)V
    .locals 2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "push_nid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setIsNeedPush(Landroid/content/Context;Z)V
    .locals 3

    sput-boolean p1, Lcom/shandagames/gameplus/push/SocketPushService;->isNeedPush:Z

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isNeedPush"

    sget-boolean v2, Lcom/shandagames/gameplus/push/SocketPushService;->isNeedPush:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setPushMsgCount(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1}, Lcom/shandagames/gameplus/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static setPushMsgNId(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    invoke-static {p1}, Lcom/shandagames/gameplus/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "push_nid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {p0}, Lcom/shandagames/gameplus/push/SocketPushService;->getCurrentPushNId(Landroid/content/Context;)I

    move-result v0

    if-ge v0, p2, :cond_1

    invoke-static {p0, p2}, Lcom/shandagames/gameplus/push/SocketPushService;->setCurrentPushNId(Landroid/content/Context;I)V

    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private showNotification(Lcom/shandagames/gameplus/model/MessageModel;)V
    .locals 3

    if-eqz p1, :cond_0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/shandagames/gameplus/model/MessageModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shandagames/gameplus/model/MessageModel;->getMessageid()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/shandagames/gameplus/model/MessageModel;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/shandagames/gameplus/push/SocketPushService;->showNotification(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/shandagames/gameplus/push/SocketPushService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/shandagames/gameplus/config/Config;->displayMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/shandagames/gameplus/push/SocketPushService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/shandagames/gameplus/util/VibrateUtil;->Vibrate(Landroid/content/Context;J)V

    :goto_1
    return-void

    :cond_0
    iget-object p1, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mMessageModel:Lcom/shandagames/gameplus/model/MessageModel;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "showNotification\u5931\u8d25  MessageModel==null "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->updateLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private showNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/shandagames/gameplus/push/SocketPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shandagames/gameplus/push/SocketPushService;->getPushMsgNId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/shandagames/gameplus/push/SocketPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/shandagames/gameplus/push/SocketPushService;->getPushMsgCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Lcom/shandagames/gameplus/push/SocketPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/shandagames/gameplus/push/SocketPushService;->setPushMsgNId(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/shandagames/gameplus/push/SocketPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/shandagames/gameplus/push/SocketPushService;->setPushMsgCount(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/shandagames/gameplus/push/SocketPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v3, Landroid/app/Notification;

    invoke-virtual {p0}, Lcom/shandagames/gameplus/push/SocketPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v4, p1, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.shandagames.gameplus.intent.action.PUSH_CLEAR"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "PUSH_TITLE"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "PUSH_CONTENT"

    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v1, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.shandagames.gameplus.intent.action.PUSH_START_GAME"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "PUSH_TITLE"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "PUSH_CONTENT"

    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/shandagames/gameplus/push/SocketPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {p0}, Lcom/shandagames/gameplus/push/SocketPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u6761)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, p1, v6, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput v2, v3, Landroid/app/Notification;->number:I

    const/16 v2, 0x10

    iput v2, v3, Landroid/app/Notification;->flags:I

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "SocketPushService"

    const-string v1, "clear........................."

    invoke-static {v0, v1}, Lcom/shandagames/gameplus/log/LogDebugger;->info(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Lcom/shandagames/gameplus/push/SocketPushService;->isStart_Check_Beat:Z

    sput-boolean v2, Lcom/shandagames/gameplus/push/SocketPushService;->isStart_Get_Message:Z

    invoke-virtual {p0}, Lcom/shandagames/gameplus/push/SocketPushService;->closeSocket()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mPushServerInfo:Lcom/shandagames/gameplus/model/PushServerInfo;

    sput v2, Lcom/shandagames/gameplus/push/SocketPushService;->alarmMsg:I

    return-void
.end method

.method public closeSocket()V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iput-object v1, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mSocket:Ljava/net/Socket;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v1, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mSocket:Ljava/net/Socket;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mSocket:Ljava/net/Socket;

    throw v0
.end method

.method public getPushServerInfo()V
    .locals 8

    const-string v0, "\u83b7\u53d6PushServer\u4fe1\u606f\u3002\u3002\u3002\u3002"

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->updateLog(Ljava/lang/String;)V

    sget-object v0, Lcom/shandagames/gameplus/push/SocketPushService;->clientid:Ljava/lang/String;

    invoke-static {v0}, Lcom/shandagames/gameplus/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shandagames/gameplus/push/SocketPushService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "push_clientid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shandagames/gameplus/push/SocketPushService;->clientid:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/shandagames/gameplus/push/SocketPushService;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mPushServerInfo:Lcom/shandagames/gameplus/model/PushServerInfo;

    if-eqz v0, :cond_1

    const-string v0, "\u83b7\u53d6PushServer\u4fe1\u606f  \u670d\u52a1\u5df2\u7ecf\u542f\u52a8"

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->updateLog(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/shandagames/gameplus/push/SocketPushService;->clientid:Ljava/lang/String;

    invoke-static {v0}, Lcom/shandagames/gameplus/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6PushServer\u4fe1\u606f  clientid "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/shandagames/gameplus/push/SocketPushService;->clientid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->updateLog(Ljava/lang/String;)V

    const-string v0, ""

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "_t"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "_c"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/shandagames/gameplus/push/SocketPushService;->clientid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shandagames/gameplus/util/DESUtil;->Des3(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/shandagames/gameplus/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "_d"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/shandagames/gameplus/push/SocketPushService$8;

    invoke-static {}, Lcom/shandagames/gameplus/network/RequestConstant;->getPushServerInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "post"

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/shandagames/gameplus/push/SocketPushService$8;-><init>(Lcom/shandagames/gameplus/push/SocketPushService;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/shandagames/gameplus/api/impl/network/GLRequestExecutor;->doAsync(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u521b\u5efa dJson Exception"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/shandagames/gameplus/push/SocketPushService;->updateLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "clientid\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->updateLog(Ljava/lang/String;)V

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "clientid == null"

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->updateLog(Ljava/lang/String;)V

    const/16 v0, 0x3e0

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    goto/16 :goto_0
.end method

.method public isAlive()Z
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "SocketPushService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Service onCreate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/shandagames/gameplus/push/SocketPushService;->isStop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shandagames/gameplus/log/LogDebugger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/shandagames/gameplus/push/SocketPushService;->doStart()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/shandagames/gameplus/push/SocketPushService;->isStop:Z

    const/16 v0, 0x3e0

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    const-string v0, "SocketPushService"

    const-string v1, " Service destroyed"

    invoke-static {v0, v1}, Lcom/shandagames/gameplus/log/LogDebugger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    invoke-direct {p0}, Lcom/shandagames/gameplus/push/SocketPushService;->doStart()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, p1, v0, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public parseMessage(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    new-array v3, v0, [B

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    const-string v0, "\u670d\u52a1\u5668\u65ad\u5f00\u8fde\u63a5\u3002\u3002\u3002\u3002"

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->updateLog(Ljava/lang/String;)V

    const/16 v0, 0x424

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    :goto_0
    return-void

    :cond_0
    array-length v5, v3

    invoke-virtual {v4, v3, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-static {v3}, Lcom/shandagames/gameplus/util/MessageUtil;->isMessageStart([B)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    :goto_1
    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/shandagames/gameplus/util/MessageUtil;->readMessageType([B)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readMessageType "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/shandagames/gameplus/push/SocketPushService;->updateLog(Ljava/lang/String;)V

    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    const-string v0, "\u68c0\u6d4b\u5fc3\u8df3\u5305\u6210\u529f "

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->updateLog(Ljava/lang/String;)V

    const/16 v0, 0x41b

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    invoke-virtual {v4, v3, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-static {v3}, Lcom/shandagames/gameplus/util/MessageUtil;->isMessageEnd([B)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    goto :goto_1

    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    invoke-static {v0}, Lcom/shandagames/gameplus/util/MessageUtil;->readMessage([B)Lcom/shandagames/gameplus/model/MessageModel;

    move-result-object v2

    iput-object v2, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mMessageModel:Lcom/shandagames/gameplus/model/MessageModel;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u83b7\u53d6\u6d88\u606f \u6210\u529f"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    array-length v4, v0

    invoke-direct {v3, v0, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->updateLog(Ljava/lang/String;)V

    const/16 v0, 0x407

    iget-object v1, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mMessageModel:Lcom/shandagames/gameplus/model/MessageModel;

    invoke-virtual {p0, v0, v1}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u83b7\u53d6\u6d88\u606f \u5931\u8d25 in2b "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    array-length v4, v0

    invoke-direct {v3, v0, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->updateLog(Ljava/lang/String;)V

    const/16 v0, 0x408

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x6

    if-ne v2, v3, :cond_9

    invoke-static {v0}, Lcom/shandagames/gameplus/util/MessageUtil;->checkRegisterMessage([B)Z

    move-result v2

    if-eqz v2, :cond_8

    array-length v2, v0

    const/16 v3, 0xf

    if-le v2, v3, :cond_7

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x10

    array-length v4, v0

    add-int/lit8 v4, v4, -0xf

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v2, v0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    sput v2, Lcom/shandagames/gameplus/push/SocketPushService;->TIME_OUT_GET:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6ce8\u518c\u6210\u529f "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    array-length v4, v0

    invoke-direct {v3, v0, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TIME_OUT_GET = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/shandagames/gameplus/push/SocketPushService;->TIME_OUT_GET:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->updateLog(Ljava/lang/String;)V

    const/16 v0, 0x3fd

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const/16 v2, 0x4e20

    sput v2, Lcom/shandagames/gameplus/push/SocketPushService;->TIME_OUT_GET:I

    goto :goto_2

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6ce8\u518c\u5931\u8d25   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    array-length v4, v0

    invoke-direct {v3, v0, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->updateLog(Ljava/lang/String;)V

    const/16 v0, 0x3fe

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, p1}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(I)V

    goto/16 :goto_0
.end method

.method protected final removeMessages(I)V
    .locals 1

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected final sendMessage(I)V
    .locals 2

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessage(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shandagames/gameplus/push/SocketPushService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setAlarmManagerTime(II)V
    .locals 7

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.shandagames.gameplus.intent.action.PUSH_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "alarmMsg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/shandagames/gameplus/push/SocketPushService;->alarmMgr:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/shandagames/gameplus/push/SocketPushService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sput-object v0, Lcom/shandagames/gameplus/push/SocketPushService;->alarmMgr:Landroid/app/AlarmManager;

    :cond_0
    if-gtz p2, :cond_1

    sget p2, Lcom/shandagames/gameplus/push/SocketPushService;->TIME_OUT_GET:I

    :cond_1
    int-to-long v2, p2

    :try_start_0
    sget-object v0, Lcom/shandagames/gameplus/push/SocketPushService;->alarmMgr:Landroid/app/AlarmManager;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v2

    invoke-virtual {v0, v4, v5, v6, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const-string v0, "SocketPushService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "setAlarmManagerTime alarmMsg "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " time "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shandagames/gameplus/log/LogDebugger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setAlarmManagerTime Exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shandagames/gameplus/push/SocketPushService;->updateLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateLog(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x378

    invoke-virtual {p0, v0, p1}, Lcom/shandagames/gameplus/push/SocketPushService;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

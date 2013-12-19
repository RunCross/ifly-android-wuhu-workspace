.class public Lcom/unipay/log/LogUtils;
.super Ljava/lang/Object;


# static fields
.field private static _$1:[Ljava/lang/String;

.field private static final _$2:Ljava/lang/String;

.field private static _$3:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput v2, Lcom/unipay/log/LogUtils;->_$3:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.unicomCache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unipay/log/LogUtils;->_$2:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "device"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "login"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "selectsrv"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pay"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "exit"

    aput-object v2, v0, v1

    sput-object v0, Lcom/unipay/log/LogUtils;->_$1:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetTotalFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unipay/log/LogUtils;->_$2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static UpdateFile()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/unipay/log/LogUtils;->_$1:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/unipay/log/LogUtils;->_$1:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1, v0}, Lcom/unipay/log/LogUtils;->_$1(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static _$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private static _$1(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/unipay/log/LogUtils;->GetTotalFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "filetype"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "content"

    invoke-static {p0}, Lcom/unipay/log/LogUtils;->GetTotalFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unipay/log/LogUtils;->_$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/unipay/log/LogNet;->getInstance()Lcom/unipay/log/LogNet;

    move-result-object v1

    const-string v2, "http://uniview.wostore.cn/log-app/postFileContent"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, p0}, Lcom/unipay/log/LogNet;->outlineMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static _$1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/unipay/log/LogUtils;->_$2:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/unipay/log/LogUtils;->_$2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static _$2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/unipay/log/LogUtils;->_$2:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/unipay/log/LogUtils;->_$2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy\u5e74MM\u6708dd\u65e5   HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static deleteFile(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "log_counts"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "counts"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :try_start_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/unipay/log/LogUtils;->_$2:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/unipay/log/LogUtils;->_$2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const-string v0, "xyf"

    const-string v1, "delete success"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static deleteFileWithTotalPath(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/unipay/log/LogUtils;->_$2:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const-string v0, "xyf"

    const-string v1, "delete success"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static deleteFileWithTotalPath(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "log_counts"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "counts"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :try_start_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/unipay/log/LogUtils;->_$2:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const-string v0, "xyf"

    const-string v1, "delete success"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCounts(Landroid/content/Context;)I
    .locals 3

    const/4 v2, 0x0

    const-string v0, "log_counts"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "counts"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/unipay/log/LogUtils;->_$3:I

    return v0
.end method

.method public static getFirstUseSdk(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "sdk_firstrun"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "runfirst"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getUpdateLog(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "sdk_updatelogfaild"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isUpdatedLog"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static initCounts(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "log_counts"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "counts"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static isSdcardExit()Z
    .locals 2

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static myLog_i2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p2}, Lcom/unipay/log/LogUtils;->_$1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCounts(Landroid/content/Context;)V
    .locals 3

    const-string v0, "log_counts"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0}, Lcom/unipay/log/LogUtils;->getCounts(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/unipay/log/LogUtils;->_$3:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/unipay/log/LogUtils;->_$3:I

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "counts"

    sget v2, Lcom/unipay/log/LogUtils;->_$3:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setFirstUseSdk(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "sdk_firstrun"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "runfirst"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setUpdateLog(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "sdk_updatelogfaild"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isUpdatedLog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static writeLog_device(Landroid/content/Context;)V
    .locals 5

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v0, Lcom/unipay/log/Parameters;

    invoke-direct {v0}, Lcom/unipay/log/Parameters;-><init>()V

    const-string v2, "imsi"

    invoke-static {p0}, Lcom/unipay/tools/PhoneInfoTools;->getImsiStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "osversion"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lcd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "X"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "imei"

    invoke-static {p0}, Lcom/unipay/tools/PhoneInfoTools;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mac"

    invoke-static {p0}, Lcom/unipay/tools/PhoneInfoTools;->getDeviceMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "channel"

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getFidvac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/unipay/log/LogNet;->getInstance()Lcom/unipay/log/LogNet;

    move-result-object v1

    const-string v2, "http://uniview.wostore.cn/log-app/postDevice"

    invoke-virtual {v0}, Lcom/unipay/log/Parameters;->toJsonString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "device"

    invoke-virtual {v1, v2, v0, v3}, Lcom/unipay/log/LogNet;->RequestLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static writeLog_exit(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/unipay/log/Parameters;

    invoke-direct {v1}, Lcom/unipay/log/Parameters;-><init>()V

    const-string v2, "imsi"

    invoke-static {p0}, Lcom/unipay/tools/PhoneInfoTools;->getImsiStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "userid"

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getUserid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appid"

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getmGameBaseBean()Lcom/unipay/beans/GameBaseBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/GameBaseBean;->getAppid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "game"

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getmGameBaseBean()Lcom/unipay/beans/GameBaseBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/GameBaseBean;->getGame()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "datetime"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onlinetime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getStarttime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "result"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "errcode"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/unipay/log/LogNet;->getInstance()Lcom/unipay/log/LogNet;

    move-result-object v0

    const-string v2, "http://uniview.wostore.cn/log-app/postLogoutInfo"

    invoke-virtual {v1}, Lcom/unipay/log/Parameters;->toJsonString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "exit"

    invoke-virtual {v0, v2, v1, v3}, Lcom/unipay/log/LogNet;->RequestLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static writeLog_login(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/unipay/log/Parameters;

    invoke-direct {v1}, Lcom/unipay/log/Parameters;-><init>()V

    const-string v2, "isnew"

    invoke-virtual {v1, v2, p2}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "imsi"

    invoke-static {p0}, Lcom/unipay/tools/PhoneInfoTools;->getImsiStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "userid"

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getUserid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appid"

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getmGameBaseBean()Lcom/unipay/beans/GameBaseBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/GameBaseBean;->getAppid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getmGameBaseBean()Lcom/unipay/beans/GameBaseBean;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "game"

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getmGameBaseBean()Lcom/unipay/beans/GameBaseBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/GameBaseBean;->getGame()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v2, "channel"

    invoke-static {p0}, Lcom/unipay/tools/PhoneInfoTools;->getFidVac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/unipay/tools/MultimodeConfig;->setStarttime(J)V

    const-string v2, "datetime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {v1, v0, p3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "errcode"

    invoke-virtual {v1, v0, p4}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ip"

    invoke-static {}, Lcom/unipay/tools/PhoneInfoTools;->GetHostIP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "net"

    invoke-static {p0}, Lcom/unipay/tools/PhoneInfoTools;->getCurrentAPN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sdkversion"

    sget-object v2, Lcom/unipay/tools/MyApplication;->version:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/unipay/log/LogNet;->getInstance()Lcom/unipay/log/LogNet;

    move-result-object v0

    const-string v2, "http://uniview.wostore.cn/log-app/postLoginRegister"

    invoke-virtual {v1}, Lcom/unipay/log/Parameters;->toJsonString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "login"

    invoke-virtual {v0, v2, v1, v3}, Lcom/unipay/log/LogNet;->RequestLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "game"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static writeLog_pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/unipay/log/Parameters;

    invoke-direct {v1}, Lcom/unipay/log/Parameters;-><init>()V

    const-string v2, "imsi"

    invoke-static {p0}, Lcom/unipay/tools/PhoneInfoTools;->getImsiStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "userid"

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getUserid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getmGameBaseBean()Lcom/unipay/beans/GameBaseBean;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "appid"

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getmGameBaseBean()Lcom/unipay/beans/GameBaseBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/GameBaseBean;->getAppid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "game"

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getmGameBaseBean()Lcom/unipay/beans/GameBaseBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/GameBaseBean;->getGame()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cpid"

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getmGameBaseBean()Lcom/unipay/beans/GameBaseBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/GameBaseBean;->getPrmCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cpcode"

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getmGameBaseBean()Lcom/unipay/beans/GameBaseBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/GameBaseBean;->getCpid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getmPayValueBean()Lcom/unipay/beans/PayValueBean;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "vaccode"

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getmPayValueBean()Lcom/unipay/beans/PayValueBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/PayValueBean;->getVacCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "customcode"

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getmPayValueBean()Lcom/unipay/beans/PayValueBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/PayValueBean;->getCustomCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "orderid"

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getmPayValueBean()Lcom/unipay/beans/PayValueBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/PayValueBean;->getOrderid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getmPayValueBean()Lcom/unipay/beans/PayValueBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/PayValueBean;->getMoney()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x4059

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v2, "datetime"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "payway"

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getPayType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {v1, v0, p2}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "errcode"

    invoke-virtual {v1, v0, p3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sdkversion"

    sget-object v2, Lcom/unipay/tools/MyApplication;->version:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isshowpage"

    invoke-virtual {v1, v0, p4}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/unipay/log/LogNet;->getInstance()Lcom/unipay/log/LogNet;

    move-result-object v0

    const-string v2, "http://uniview.wostore.cn/log-app/postPaymentInfo"

    invoke-virtual {v1}, Lcom/unipay/log/Parameters;->toJsonString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pay"

    invoke-virtual {v0, v2, v1, v3}, Lcom/unipay/log/LogNet;->RequestLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "appid"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "game"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cpid"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cpcode"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v2, "vaccode"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "customcode"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "orderid"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static writeLog_selectsrv(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/unipay/log/Parameters;

    invoke-direct {v1}, Lcom/unipay/log/Parameters;-><init>()V

    const-string v2, "imsi"

    invoke-static {p0}, Lcom/unipay/tools/PhoneInfoTools;->getImsiStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "userid"

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getUserid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appid"

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getmGameBaseBean()Lcom/unipay/beans/GameBaseBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/GameBaseBean;->getAppid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getmGameBaseBean()Lcom/unipay/beans/GameBaseBean;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "game"

    invoke-static {}, Lcom/unipay/tools/MultimodeConfig;->getmGameBaseBean()Lcom/unipay/beans/GameBaseBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/GameBaseBean;->getGame()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v2, "srvid"

    invoke-virtual {v1, v2, p2}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "username"

    invoke-virtual {v1, v2, p3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "datetime"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/unipay/log/LogNet;->getInstance()Lcom/unipay/log/LogNet;

    move-result-object v0

    const-string v2, "http://uniview.wostore.cn/log-app/postServerSelection"

    invoke-virtual {v1}, Lcom/unipay/log/Parameters;->toJsonString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "selectsrv"

    invoke-virtual {v0, v2, v1, v3}, Lcom/unipay/log/LogNet;->RequestLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "game"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/unipay/log/Parameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.class public Lcom/shandagames/gameplus/util/PhoneNumberCheckUtil;
.super Ljava/lang/Object;


# static fields
.field private static final REGEX_PHONE_NUMBER:Ljava/lang/String; = "1\\d{10}|[0-9]{1,4}-\\d{6,12}"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "1\\d{10}|[0-9]{1,4}-\\d{6,12}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

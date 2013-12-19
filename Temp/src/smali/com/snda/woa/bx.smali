.class final Lcom/snda/woa/bx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/snda/woa/bx;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/snda/woa/bx;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/snda/woa/bx;->c:Z

    iput-object p4, p0, Lcom/snda/woa/bx;->d:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/snda/woa/bx;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/snda/woa/bx;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/snda/woa/bx;->c:Z

    iget-object v3, p0, Lcom/snda/woa/bx;->d:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2, v3}, Lcom/snda/woa/l;->a(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)V

    return-void
.end method

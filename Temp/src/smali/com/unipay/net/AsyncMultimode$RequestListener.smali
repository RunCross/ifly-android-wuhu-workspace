.class public interface abstract Lcom/unipay/net/AsyncMultimode$RequestListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/net/AsyncMultimode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestListener"
.end annotation


# virtual methods
.method public abstract onComplete(Ljava/io/InputStream;)V
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

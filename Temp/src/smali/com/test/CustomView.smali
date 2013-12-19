.class public Lcom/test/CustomView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static a:F

.field private static d:I

.field private static i:Landroid/view/SurfaceHolder;

.field private static j:Ljavax/microedition/khronos/egl/EGL10;

.field private static k:Ljavax/microedition/khronos/egl/EGLContext;

.field private static l:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private static m:Ljavax/microedition/khronos/egl/EGLSurface;

.field private static n:Ljavax/microedition/khronos/egl/EGLConfig;

.field private static o:Ljavax/microedition/khronos/opengles/GL10;

.field private static r:I


# instance fields
.field private b:J

.field private c:I

.field private e:Z

.field private f:Z

.field private g:Lcom/test/GLRenderer;

.field private h:Landroid/os/Handler;

.field private p:Landroid/view/ScaleGestureDetector;

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/high16 v0, 0x41f0

    sput v0, Lcom/test/CustomView;->a:F

    sput v2, Lcom/test/CustomView;->d:I

    sput-object v1, Lcom/test/CustomView;->k:Ljavax/microedition/khronos/egl/EGLContext;

    sput-object v1, Lcom/test/CustomView;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    sput-object v1, Lcom/test/CustomView;->m:Ljavax/microedition/khronos/egl/EGLSurface;

    sput-object v1, Lcom/test/CustomView;->n:Ljavax/microedition/khronos/egl/EGLConfig;

    sput-object v1, Lcom/test/CustomView;->o:Ljavax/microedition/khronos/opengles/GL10;

    sput v2, Lcom/test/CustomView;->r:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/test/CustomView;->b:J

    iput v2, p0, Lcom/test/CustomView;->c:I

    iput-boolean v2, p0, Lcom/test/CustomView;->e:Z

    iput-boolean v2, p0, Lcom/test/CustomView;->f:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/test/CustomView;->h:Landroid/os/Handler;

    iput v2, p0, Lcom/test/CustomView;->q:I

    const-string v0, "CustomView \u30b3\u30f3\u30b9\u30c8\u30e9\u30af\u30bf"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/test/GLRenderer;

    invoke-direct {v0}, Lcom/test/GLRenderer;-><init>()V

    iput-object v0, p0, Lcom/test/CustomView;->g:Lcom/test/GLRenderer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/test/CustomView;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/test/CustomView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/test/CustomView;->g:Lcom/test/GLRenderer;

    invoke-static {}, Lcom/test/RooneyJActivity;->getDisplayWidth()I

    move-result v1

    invoke-static {}, Lcom/test/RooneyJActivity;->getDisplayHeihgt()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/test/GLRenderer;->setupScreen(II)V

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/test/CustomView;->p:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method static synthetic a()F
    .locals 1

    sget v0, Lcom/test/CustomView;->a:F

    return v0
.end method

.method static synthetic a(Lcom/test/CustomView;)I
    .locals 1

    iget v0, p0, Lcom/test/CustomView;->q:I

    return v0
.end method

.method static synthetic b(Lcom/test/CustomView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/test/CustomView;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/test/CustomView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/test/CustomView;->h:Landroid/os/Handler;

    return-object v0
.end method

.method public static getFps()F
    .locals 1

    sget v0, Lcom/test/CustomView;->d:I

    int-to-float v0, v0

    return v0
.end method

.method public static getGl10()Ljavax/microedition/khronos/opengles/GL10;
    .locals 1

    sget-object v0, Lcom/test/CustomView;->o:Ljavax/microedition/khronos/opengles/GL10;

    return-object v0
.end method

.method public static setFPS(F)V
    .locals 0

    sput p0, Lcom/test/CustomView;->a:F

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    const-string v0, "CustomView#activate"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/test/SoundManager;->resume()V

    invoke-virtual {p0}, Lcom/test/CustomView;->runMainLoop()V

    return-void
.end method

.method public deactivate()V
    .locals 1

    const-string v0, "CustomView#deactivate"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/test/CustomView;->f:Z

    invoke-static {}, Lcom/test/SoundManager;->pause()V

    return-void
.end method

.method public finalizeGL()V
    .locals 6

    const/4 v5, 0x0

    const-string v0, "CustomView finalizeGL -- \u7834\u68c4"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/test/CustomView;->f:Z

    sget-object v0, Lcom/test/CustomView;->m:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/test/CustomView;->j:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/test/CustomView;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    sget-object v0, Lcom/test/CustomView;->j:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/test/CustomView;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/test/CustomView;->m:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    sput-object v5, Lcom/test/CustomView;->m:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_0
    sget-object v0, Lcom/test/CustomView;->k:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/test/CustomView;->j:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/test/CustomView;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/test/CustomView;->k:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    sput-object v5, Lcom/test/CustomView;->k:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_1
    sget-object v0, Lcom/test/CustomView;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/test/CustomView;->j:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/test/CustomView;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    sput-object v5, Lcom/test/CustomView;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_2
    return-void
.end method

.method public finish()V
    .locals 1

    const-string v0, "CustomView finish BEGIN"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/test/CustomView;->g:Lcom/test/GLRenderer;

    invoke-virtual {v0}, Lcom/test/GLRenderer;->cleanup()V

    invoke-virtual {p0}, Lcom/test/CustomView;->pauseGL()V

    invoke-virtual {p0}, Lcom/test/CustomView;->finalizeGL()V

    const-string v0, "CustomView finish END"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    return-void
.end method

.method public initializeGL()V
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v0, "CustomView initializeGL BEGIN"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    sput-object v0, Lcom/test/CustomView;->j:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    sput-object v0, Lcom/test/CustomView;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sget-object v1, Lcom/test/CustomView;->j:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Lcom/test/CustomView;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "!eglInitialize"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v5, v4, [I

    new-array v2, v4, [I

    const/16 v0, 0x3038

    aput v0, v2, v6

    sget-object v0, Lcom/test/CustomView;->j:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/test/CustomView;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "!eglChooseConfig"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    aget-object v0, v3, v6

    sput-object v0, Lcom/test/CustomView;->n:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v0, :cond_2

    new-array v0, v4, [I

    sget-object v1, Lcom/test/CustomView;->j:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Lcom/test/CustomView;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Lcom/test/CustomView;->n:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v5, 0x3024

    invoke-interface {v1, v2, v3, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EGL_RED_SIZE : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v2, v0, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/test/CustomView;->j:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Lcom/test/CustomView;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Lcom/test/CustomView;->n:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v5, 0x3023

    invoke-interface {v1, v2, v3, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EGL_GREEN_SIZE : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v2, v0, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/test/CustomView;->j:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Lcom/test/CustomView;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Lcom/test/CustomView;->n:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v5, 0x3022

    invoke-interface {v1, v2, v3, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EGL_BLUE_SIZE : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v2, v0, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/test/CustomView;->j:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Lcom/test/CustomView;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Lcom/test/CustomView;->n:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v5, 0x3021

    invoke-interface {v1, v2, v3, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EGL_ALPHA_SIZE : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v2, v0, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/test/CustomView;->j:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Lcom/test/CustomView;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Lcom/test/CustomView;->n:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v5, 0x3025

    invoke-interface {v1, v2, v3, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EGL_DEPTH_SIZE : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v0, v0, v6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    sget-object v0, Lcom/test/CustomView;->j:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/test/CustomView;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/test/CustomView;->n:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    sput-object v0, Lcom/test/CustomView;->k:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_3

    const-string v0, "glContext == EGL10.EGL_NO_CONTEXT"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v0, Lcom/test/CustomView;->j:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/test/CustomView;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/test/CustomView;->n:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v3, Lcom/test/CustomView;->i:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1, v2, v3, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    sput-object v0, Lcom/test/CustomView;->m:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_4

    const-string v0, "glSurface == EGL10.EGL_NO_SURFACE"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v0, Lcom/test/CustomView;->k:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    sput-object v0, Lcom/test/CustomView;->o:Ljavax/microedition/khronos/opengles/GL10;

    sget-object v0, Lcom/test/CustomView;->j:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/test/CustomView;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/test/CustomView;->m:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Lcom/test/CustomView;->m:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Lcom/test/CustomView;->k:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "!eglMakeCurrent"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/test/Debug;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    new-array v0, v4, [I

    const/16 v1, 0xd32

    invoke-static {v1, v0, v6}, Landroid/opengl/GLES11;->glGetIntegerv(I[II)V

    const-string v1, "GL_MAX_CLIP_PLANES=%d"

    new-array v2, v4, [Ljava/lang/Object;

    aget v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "CustomView initializeGL END"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    iget-object v0, p0, Lcom/test/CustomView;->g:Lcom/test/GLRenderer;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/test/GLRenderer;->gestureScale(F)V

    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    iget-object v0, p0, Lcom/test/CustomView;->g:Lcom/test/GLRenderer;

    invoke-virtual {v0}, Lcom/test/GLRenderer;->gestureBegin()V

    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    iget-object v0, p0, Lcom/test/CustomView;->g:Lcom/test/GLRenderer;

    invoke-virtual {v0}, Lcom/test/GLRenderer;->gestureEnd()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/test/CustomView;->p:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const v3, 0xff00

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v0, v1

    :goto_1
    return v0

    :sswitch_0
    iget-object v1, p0, Lcom/test/CustomView;->g:Lcom/test/GLRenderer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/test/GLRenderer;->touchesBegan(III)V

    goto :goto_1

    :sswitch_1
    iget-object v1, p0, Lcom/test/CustomView;->g:Lcom/test/GLRenderer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/test/GLRenderer;->touchesEnded(III)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    move v2, v1

    :goto_2
    if-lt v2, v3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/test/CustomView;->g:Lcom/test/GLRenderer;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v1, v5, v6}, Lcom/test/GLRenderer;->touchesMoved(III)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_1
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x105 -> :sswitch_0
        0x106 -> :sswitch_1
    .end sparse-switch
.end method

.method public pauseGL()V
    .locals 5

    const-string v0, "pauseGL()"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/test/CustomView;->m:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/test/CustomView;->j:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/test/CustomView;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Lcom/test/CustomView;->k:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    sget-object v0, Lcom/test/CustomView;->j:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/test/CustomView;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/test/CustomView;->m:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/test/CustomView;->m:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_0
    return-void
.end method

.method public resumeGL()V
    .locals 5

    const-string v0, "resumeGL()"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/test/CustomView;->f:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/test/CustomView;->j:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/test/CustomView;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/test/CustomView;->n:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v3, Lcom/test/CustomView;->i:Landroid/view/SurfaceHolder;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    sput-object v0, Lcom/test/CustomView;->m:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v0, Lcom/test/CustomView;->j:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/test/CustomView;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/test/CustomView;->m:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Lcom/test/CustomView;->m:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Lcom/test/CustomView;->k:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    :cond_0
    return-void
.end method

.method public runMainLoop()V
    .locals 4

    const/4 v2, 0x0

    const-string v0, "\u30e1\u30a4\u30f3\u30eb\u30fc\u30d7\u56de\u3057\u307e\u3059"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/test/CustomView;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "\u65e2\u306b\u30e1\u30a4\u30f3\u30eb\u30fc\u30d7\u306f\u56de\u3063\u3066\u3044\u307e\u3059\u3002CustomView#runMainLoop()"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/test/CustomView;->f:Z

    invoke-static {}, Lcom/test/RooneyJActivity;->isShowingDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u30c0\u30a4\u30a2\u30ed\u30b0\u8868\u793a\u4e2d\u3067\u3059\u3002\u30c0\u30a4\u30a2\u30ed\u30b0\u6d88\u3057\u307e\u3059"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/test/RooneyJActivity;->dismissDialog()V

    :cond_1
    iget-object v0, p0, Lcom/test/CustomView;->h:Landroid/os/Handler;

    new-instance v1, Lcom/test/d;

    invoke-direct {v1, p0}, Lcom/test/d;-><init>(Lcom/test/CustomView;)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public sleep()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/test/CustomView;->e:Z

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    const/4 v1, 0x0

    const-string v0, "CustomView surfaceChanged"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/test/CustomView;->o:Ljavax/microedition/khronos/opengles/GL10;

    if-nez v0, :cond_0

    const-string v0, "=== Call CustomView#initializeGL (at surfaceChanged)"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object p1, Lcom/test/CustomView;->i:Landroid/view/SurfaceHolder;

    invoke-virtual {p0}, Lcom/test/CustomView;->initializeGL()V

    invoke-static {}, Lcom/test/RooneyJActivity;->isAvailableExternalStorage()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/test/CustomView;->g:Lcom/test/GLRenderer;

    invoke-virtual {v2, v0}, Lcom/test/GLRenderer;->nativeInitialize(I)V

    const/16 v0, 0x1f01

    invoke-static {v0}, Landroid/opengl/GLES11;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/test/DeviceInfo;->setVariousSwitchFromRenderer(Ljava/lang/String;)V

    invoke-static {}, Lcom/test/RooneyJActivity;->initPushSerivce()V

    :goto_1
    iget-boolean v0, p0, Lcom/test/CustomView;->e:Z

    if-eqz v0, :cond_1

    const-string v0, "\u30b9\u30ea\u30fc\u30d7\u4e2d\u306a\u306e\u3067\u30e1\u30a4\u30f3\u30eb\u30fc\u30d7\u56de\u3057\u307e\u305b\u3093"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void

    :cond_0
    sput-object p1, Lcom/test/CustomView;->i:Landroid/view/SurfaceHolder;

    invoke-virtual {p0}, Lcom/test/CustomView;->resumeGL()V

    goto :goto_1

    :cond_1
    const-string v0, "\u30b9\u30ea\u30fc\u30d7\u4e2d\u3067\u306f\u3042\u308a\u307e\u305b\u3093\u3002"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/test/Debug;->detail(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/test/CustomView;->runMainLoop()V

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string v0, "CustomView surfaceCreated"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    sput-object p1, Lcom/test/CustomView;->i:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string v0, "CustomView surfaceDestoryed"

    invoke-static {v0}, Lcom/test/Debug;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/test/CustomView;->f:Z

    invoke-virtual {p0}, Lcom/test/CustomView;->pauseGL()V

    return-void
.end method

.method public swapBuffers()V
    .locals 3

    sget-object v0, Lcom/test/CustomView;->m:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/test/CustomView;->j:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/test/CustomView;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/test/CustomView;->m:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    :cond_0
    return-void
.end method

.method public taskTask(I)V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/test/CustomView;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/test/CustomView;->g:Lcom/test/GLRenderer;

    invoke-virtual {v0, p1}, Lcom/test/GLRenderer;->customview_doTask(I)V

    iget v0, p0, Lcom/test/CustomView;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/test/CustomView;->c:I

    sget v0, Lcom/test/CustomView;->r:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/test/CustomView;->r:I

    const/16 v1, 0xe7

    if-le v0, v1, :cond_0

    sput v6, Lcom/test/CustomView;->r:I

    :cond_0
    const-wide/16 v0, 0x3e8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/test/CustomView;->b:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget v0, p0, Lcom/test/CustomView;->c:I

    sput v0, Lcom/test/CustomView;->d:I

    iput v6, p0, Lcom/test/CustomView;->c:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/test/CustomView;->b:J

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/test/CustomView;->swapBuffers()V

    :cond_2
    invoke-static {}, Lcom/test/SoundManager;->repeatcheck()V

    return-void
.end method

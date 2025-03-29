.class public Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport$2;
.super Ljava/lang/Object;
.source "AndroidPlatformSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidGame;->view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    return-void
.end method

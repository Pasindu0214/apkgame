.class public Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport$1;
.super Ljava/lang/Object;
.source "AndroidPlatformSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$finalH:I

.field public final synthetic val$finalW:I


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport$1;->val$finalW:I

    iput p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport$1;->val$finalH:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidGame;->view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport$1;->val$finalW:I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport$1;->val$finalH:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    return-void
.end method

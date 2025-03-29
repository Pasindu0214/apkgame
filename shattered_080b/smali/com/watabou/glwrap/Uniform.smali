.class public Lcom/watabou/glwrap/Uniform;
.super Ljava/lang/Object;
.source "Uniform.java"


# instance fields
.field public location:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/watabou/glwrap/Uniform;->location:I

    return-void
.end method


# virtual methods
.method public valueM4([F)V
    .locals 3

    .line 1
    sget-object v0, La/b/a/e;->g:La/b/a/o/d;

    iget v1, p0, Lcom/watabou/glwrap/Uniform;->location:I

    check-cast v0, La/b/a/m/a/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-static {v1, v2, v0, p1, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

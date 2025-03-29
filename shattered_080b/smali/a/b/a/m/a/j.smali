.class public La/b/a/m/a/j;
.super Ljava/lang/Object;
.source "AndroidGL20.java"

# interfaces
.implements La/b/a/o/d;


# instance fields
.field public a:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, La/b/a/m/a/j;->a:[I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 1
    iget-object v0, p0, La/b/a/m/a/j;->a:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 2
    iget-object v0, p0, La/b/a/m/a/j;->a:[I

    aget v0, v0, v1

    return v0
.end method

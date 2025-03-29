.class public La/b/a/o/m/b$b;
.super Ljava/lang/Object;
.source "BitmapFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/o/m/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:I

.field public k:I

.field public l:I

.field public m:[[B

.field public n:Z

.field public o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, La/b/a/o/m/b$b;->o:I

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    .line 1
    iget-object v0, p0, La/b/a/o/m/b$b;->m:[[B

    if-nez v0, :cond_0

    const/16 v0, 0x80

    new-array v0, v0, [[B

    iput-object v0, p0, La/b/a/o/m/b$b;->m:[[B

    .line 2
    :cond_0
    iget-object v0, p0, La/b/a/o/m/b$b;->m:[[B

    ushr-int/lit8 v1, p1, 0x9

    aget-object v2, v0, v1

    if-nez v2, :cond_1

    const/16 v2, 0x200

    new-array v2, v2, [B

    .line 3
    aput-object v2, v0, v1

    :cond_1
    and-int/lit16 p1, p1, 0x1ff

    int-to-byte p2, p2

    .line 4
    aput-byte p2, v2, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, La/b/a/o/m/b$b;->a:I

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

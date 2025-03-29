.class public La/b/a/o/n/h;
.super Ljava/lang/Object;
.source "PixmapTextureData.java"

# interfaces
.implements La/b/a/o/l;


# instance fields
.field public final a:La/b/a/o/g;

.field public final b:La/b/a/o/g$c;

.field public final c:Z

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(La/b/a/o/g;La/b/a/o/g$c;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La/b/a/o/n/h;->a:La/b/a/o/g;

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p1}, La/b/a/o/g;->c()La/b/a/o/g$c;

    move-result-object p2

    :cond_0
    iput-object p2, p0, La/b/a/o/n/h;->b:La/b/a/o/g$c;

    .line 4
    iput-boolean p3, p0, La/b/a/o/n/h;->c:Z

    .line 5
    iput-boolean p4, p0, La/b/a/o/n/h;->d:Z

    .line 6
    iput-boolean p5, p0, La/b/a/o/n/h;->e:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    new-instance v0, La/b/a/r/d;

    const-string v1, "prepare() must not be called on a PixmapTextureData instance as it is already prepared."

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(I)V
    .locals 1

    .line 1
    new-instance p1, La/b/a/r/d;

    const-string v0, "This TextureData implementation does not upload data itself"

    invoke-direct {p1, v0}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/o/n/h;->a:La/b/a/o/g;

    .line 2
    iget-object v0, v0, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 3
    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/o/n/h;->a:La/b/a/o/g;

    .line 2
    iget-object v0, v0, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 3
    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La/b/a/o/n/h;->e:Z

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La/b/a/o/n/h;->d:Z

    return v0
.end method

.method public g()La/b/a/o/g;
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/o/n/h;->a:La/b/a/o/g;

    return-object v0
.end method

.method public getType()La/b/a/o/l$a;
    .locals 1

    .line 1
    sget-object v0, La/b/a/o/l$a;->a:La/b/a/o/l$a;

    return-object v0
.end method

.method public h()La/b/a/o/g$c;
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/o/n/h;->b:La/b/a/o/g$c;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La/b/a/o/n/h;->c:Z

    return v0
.end method

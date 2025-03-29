.class public La/b/a/o/n/b;
.super Ljava/lang/Object;
.source "FileTextureData.java"

# interfaces
.implements La/b/a/o/l;


# instance fields
.field public final a:La/b/a/n/a;

.field public b:I

.field public c:I

.field public d:La/b/a/o/g$c;

.field public e:La/b/a/o/g;

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(La/b/a/n/a;La/b/a/o/g;La/b/a/o/g$c;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, La/b/a/o/n/b;->b:I

    .line 3
    iput v0, p0, La/b/a/o/n/b;->c:I

    .line 4
    iput-boolean v0, p0, La/b/a/o/n/b;->g:Z

    .line 5
    iput-object p1, p0, La/b/a/o/n/b;->a:La/b/a/n/a;

    .line 6
    iput-object p2, p0, La/b/a/o/n/b;->e:La/b/a/o/g;

    .line 7
    iput-object p3, p0, La/b/a/o/n/b;->d:La/b/a/o/g$c;

    .line 8
    iput-boolean p4, p0, La/b/a/o/n/b;->f:Z

    if-eqz p2, :cond_0

    .line 9
    iget-object p1, p2, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 10
    iget p4, p1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    .line 11
    iput p4, p0, La/b/a/o/n/b;->b:I

    .line 12
    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    .line 13
    iput p1, p0, La/b/a/o/n/b;->c:I

    if-nez p3, :cond_0

    .line 14
    invoke-virtual {p2}, La/b/a/o/g;->c()La/b/a/o/g$c;

    move-result-object p1

    iput-object p1, p0, La/b/a/o/n/b;->d:La/b/a/o/g$c;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-boolean v0, p0, La/b/a/o/n/b;->g:Z

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, La/b/a/o/n/b;->e:La/b/a/o/g;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, La/b/a/o/n/b;->a:La/b/a/n/a;

    .line 4
    iget-object v0, v0, La/b/a/n/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2e

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    add-int/2addr v2, v1

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "cim"

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, La/b/a/o/n/b;->a:La/b/a/n/a;

    .line 9
    invoke-static {v0}, La/b/a/o/h;->a(La/b/a/n/a;)La/b/a/o/g;

    move-result-object v0

    .line 10
    iput-object v0, p0, La/b/a/o/n/b;->e:La/b/a/o/g;

    goto :goto_1

    .line 11
    :cond_1
    new-instance v0, La/b/a/o/g;

    iget-object v2, p0, La/b/a/o/n/b;->a:La/b/a/n/a;

    invoke-direct {v0, v2}, La/b/a/o/g;-><init>(La/b/a/n/a;)V

    iput-object v0, p0, La/b/a/o/n/b;->e:La/b/a/o/g;

    .line 12
    :goto_1
    iget-object v0, p0, La/b/a/o/n/b;->e:La/b/a/o/g;

    .line 13
    iget-object v2, v0, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 14
    iget v3, v2, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    .line 15
    iput v3, p0, La/b/a/o/n/b;->b:I

    .line 16
    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->c:I

    .line 17
    iput v2, p0, La/b/a/o/n/b;->c:I

    .line 18
    iget-object v2, p0, La/b/a/o/n/b;->d:La/b/a/o/g$c;

    if-nez v2, :cond_2

    invoke-virtual {v0}, La/b/a/o/g;->c()La/b/a/o/g$c;

    move-result-object v0

    iput-object v0, p0, La/b/a/o/n/b;->d:La/b/a/o/g$c;

    .line 19
    :cond_2
    iput-boolean v1, p0, La/b/a/o/n/b;->g:Z

    return-void

    .line 20
    :cond_3
    new-instance v0, La/b/a/r/d;

    const-string v1, "Already prepared"

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(I)V
    .locals 1

    .line 21
    new-instance p1, La/b/a/r/d;

    const-string v0, "This TextureData implementation does not upload data itself"

    invoke-direct {p1, v0}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, La/b/a/o/n/b;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, La/b/a/o/n/b;->c:I

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La/b/a/o/n/b;->g:Z

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()La/b/a/o/g;
    .locals 2

    .line 1
    iget-boolean v0, p0, La/b/a/o/n/b;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, La/b/a/o/n/b;->g:Z

    .line 3
    iget-object v0, p0, La/b/a/o/n/b;->e:La/b/a/o/g;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, La/b/a/o/n/b;->e:La/b/a/o/g;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, La/b/a/r/d;

    const-string v1, "Call prepare() before calling getPixmap()"

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0
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
    iget-object v0, p0, La/b/a/o/n/b;->d:La/b/a/o/g$c;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La/b/a/o/n/b;->f:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/o/n/b;->a:La/b/a/n/a;

    invoke-virtual {v0}, La/b/a/n/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

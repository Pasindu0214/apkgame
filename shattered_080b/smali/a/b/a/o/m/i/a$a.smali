.class public La/b/a/o/m/i/a$a;
.super La/b/a/o/m/b$a;
.source "FreeTypeFontGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/o/m/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public A:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;

.field public B:La/b/a/o/m/e;

.field public C:La/b/a/r/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/a<",
            "La/b/a/o/m/b$b;",
            ">;"
        }
    .end annotation
.end field

.field public D:Z

.field public x:La/b/a/r/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/a<",
            "La/b/a/o/m/h;",
            ">;"
        }
    .end annotation
.end field

.field public y:La/b/a/o/m/i/a;

.field public z:La/b/a/o/m/i/a$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, La/b/a/o/m/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(C)La/b/a/o/m/b$b;
    .locals 10

    .line 1
    invoke-super {p0, p1}, La/b/a/o/m/b$a;->a(C)La/b/a/o/m/b$b;

    move-result-object v0

    if-nez v0, :cond_4

    .line 2
    iget-object v1, p0, La/b/a/o/m/i/a$a;->y:La/b/a/o/m/i/a;

    if-eqz v1, :cond_4

    .line 3
    iget-object v0, p0, La/b/a/o/m/i/a$a;->z:La/b/a/o/m/i/a$b;

    iget v0, v0, La/b/a/o/m/i/a$b;->a:I

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, La/b/a/o/m/i/a;->b(II)V

    .line 4
    iget-boolean v0, p0, La/b/a/o/m/b$a;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, La/b/a/o/m/b$a;->k:F

    neg-float v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, La/b/a/o/m/b$a;->k:F

    :goto_0
    iget v1, p0, La/b/a/o/m/b$a;->j:F

    add-float/2addr v0, v1

    iget v1, p0, La/b/a/o/m/b$a;->p:F

    div-float v8, v0, v1

    .line 5
    iget-object v3, p0, La/b/a/o/m/i/a$a;->y:La/b/a/o/m/i/a;

    iget-object v6, p0, La/b/a/o/m/i/a$a;->z:La/b/a/o/m/i/a$b;

    iget-object v7, p0, La/b/a/o/m/i/a$a;->A:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;

    iget-object v9, p0, La/b/a/o/m/i/a$a;->B:La/b/a/o/m/e;

    move v4, p1

    move-object v5, p0

    invoke-virtual/range {v3 .. v9}, La/b/a/o/m/i/a;->a(CLa/b/a/o/m/i/a$a;La/b/a/o/m/i/a$b;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;FLa/b/a/o/m/e;)La/b/a/o/m/b$b;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    iget-object p1, p0, La/b/a/o/m/b$a;->s:La/b/a/o/m/b$b;

    return-object p1

    .line 7
    :cond_1
    iget-object v1, p0, La/b/a/o/m/i/a$a;->x:La/b/a/r/a;

    iget v3, v0, La/b/a/o/m/b$b;->o:I

    invoke-virtual {v1, v3}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/a/o/m/h;

    invoke-virtual {p0, v0, v1}, La/b/a/o/m/b$a;->a(La/b/a/o/m/b$b;La/b/a/o/m/h;)V

    .line 8
    invoke-virtual {p0, p1, v0}, La/b/a/o/m/b$a;->a(ILa/b/a/o/m/b$b;)V

    .line 9
    iget-object v1, p0, La/b/a/o/m/i/a$a;->C:La/b/a/r/a;

    invoke-virtual {v1, v0}, La/b/a/r/a;->add(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, La/b/a/o/m/i/a$a;->D:Z

    .line 11
    iget-object v1, p0, La/b/a/o/m/i/a$a;->y:La/b/a/o/m/i/a;

    iget-object v1, v1, La/b/a/o/m/i/a;->b:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    .line 12
    iget-object v3, p0, La/b/a/o/m/i/a$a;->z:La/b/a/o/m/i/a$b;

    iget-boolean v3, v3, La/b/a/o/m/i/a$b;->u:Z

    if-eqz v3, :cond_4

    .line 13
    iget-wide v3, v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;->a:J

    invoke-static {v3, v4, p1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getCharIndex(JI)I

    move-result v3

    .line 14
    iget-object v4, p0, La/b/a/o/m/i/a$a;->C:La/b/a/r/a;

    iget v4, v4, La/b/a/r/a;->b:I

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    .line 15
    iget-object v6, p0, La/b/a/o/m/i/a$a;->C:La/b/a/r/a;

    invoke-virtual {v6, v5}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La/b/a/o/m/b$b;

    .line 16
    iget v7, v6, La/b/a/o/m/b$b;->a:I

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->a(I)I

    move-result v7

    .line 17
    invoke-virtual {v1, v3, v7, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->a(III)I

    move-result v8

    if-eqz v8, :cond_2

    .line 18
    iget v9, v6, La/b/a/o/m/b$b;->a:I

    invoke-static {v8}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->a(I)I

    move-result v8

    invoke-virtual {v0, v9, v8}, La/b/a/o/m/b$b;->a(II)V

    .line 19
    :cond_2
    invoke-virtual {v1, v7, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->a(III)I

    move-result v7

    if-eqz v7, :cond_3

    .line 20
    invoke-static {v7}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->a(I)I

    move-result v7

    invoke-virtual {v6, p1, v7}, La/b/a/o/m/b$b;->a(II)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public a(La/b/a/o/m/d$a;Ljava/lang/CharSequence;IILa/b/a/o/m/b$b;)V
    .locals 2

    .line 21
    iget-object v0, p0, La/b/a/o/m/i/a$a;->B:La/b/a/o/m/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 22
    iput-boolean v1, v0, La/b/a/o/m/e;->a:Z

    .line 23
    :cond_0
    invoke-super/range {p0 .. p5}, La/b/a/o/m/b$a;->a(La/b/a/o/m/d$a;Ljava/lang/CharSequence;IILa/b/a/o/m/b$b;)V

    .line 24
    iget-boolean p1, p0, La/b/a/o/m/i/a$a;->D:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, La/b/a/o/m/i/a$a;->D:Z

    .line 26
    iget-object p1, p0, La/b/a/o/m/i/a$a;->B:La/b/a/o/m/e;

    iget-object p2, p0, La/b/a/o/m/i/a$a;->x:La/b/a/r/a;

    iget-object p3, p0, La/b/a/o/m/i/a$a;->z:La/b/a/o/m/i/a$b;

    iget-object p4, p3, La/b/a/o/m/i/a$b;->y:La/b/a/o/i$a;

    iget-object p5, p3, La/b/a/o/m/i/a$b;->z:La/b/a/o/i$a;

    iget-boolean p3, p3, La/b/a/o/m/i/a$b;->x:Z

    invoke-virtual {p1, p2, p4, p5, p3}, La/b/a/o/m/e;->a(La/b/a/r/a;La/b/a/o/i$a;La/b/a/o/i$a;Z)V

    :cond_1
    return-void
.end method

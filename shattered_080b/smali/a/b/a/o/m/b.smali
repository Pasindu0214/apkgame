.class public La/b/a/o/m/b;
.super Ljava/lang/Object;
.source "BitmapFont.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/a/o/m/b$a;,
        La/b/a/o/m/b$b;
    }
.end annotation


# instance fields
.field public final a:La/b/a/o/m/b$a;

.field public b:La/b/a/r/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/a<",
            "La/b/a/o/m/h;",
            ">;"
        }
    .end annotation
.end field

.field public final c:La/b/a/o/m/c;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    sget-object v0, La/b/a/e;->e:La/b/a/d;

    check-cast v0, La/b/a/m/a/i;

    const-string v1, "com/badlogic/gdx/utils/arial-15.fnt"

    invoke-virtual {v0, v1}, La/b/a/m/a/i;->b(Ljava/lang/String;)La/b/a/n/a;

    move-result-object v0

    sget-object v1, La/b/a/e;->e:La/b/a/d;

    check-cast v1, La/b/a/m/a/i;

    const-string v2, "com/badlogic/gdx/utils/arial-15.png"

    invoke-virtual {v1, v2}, La/b/a/m/a/i;->b(Ljava/lang/String;)La/b/a/n/a;

    move-result-object v1

    .line 2
    new-instance v2, La/b/a/o/m/b$a;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, La/b/a/o/m/b$a;-><init>(La/b/a/n/a;Z)V

    new-instance v0, La/b/a/o/m/h;

    new-instance v4, La/b/a/o/i;

    invoke-direct {v4, v1, v3}, La/b/a/o/i;-><init>(La/b/a/n/a;Z)V

    invoke-direct {v0, v4}, La/b/a/o/m/h;-><init>(La/b/a/o/i;)V

    const/4 v1, 0x1

    new-array v4, v1, [La/b/a/o/m/h;

    aput-object v0, v4, v3

    .line 3
    new-instance v0, La/b/a/r/a;

    invoke-direct {v0, v4}, La/b/a/r/a;-><init>([Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0, v2, v0, v1}, La/b/a/o/m/b;-><init>(La/b/a/o/m/b$a;La/b/a/r/a;Z)V

    .line 5
    iput-boolean v1, p0, La/b/a/o/m/b;->e:Z

    return-void
.end method

.method public constructor <init>(La/b/a/o/m/b$a;La/b/a/r/a;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/a/o/m/b$a;",
            "La/b/a/r/a<",
            "La/b/a/o/m/h;",
            ">;Z)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-boolean v0, p1, La/b/a/o/m/b$a;->d:Z

    .line 8
    iput-object p1, p0, La/b/a/o/m/b;->a:La/b/a/o/m/b$a;

    .line 9
    iput-boolean p3, p0, La/b/a/o/m/b;->d:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 10
    iget v0, p2, La/b/a/r/a;->b:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iput-object p2, p0, La/b/a/o/m/b;->b:La/b/a/r/a;

    .line 12
    iput-boolean p3, p0, La/b/a/o/m/b;->e:Z

    goto :goto_3

    .line 13
    :cond_1
    :goto_0
    iget-object p2, p1, La/b/a/o/m/b$a;->b:[Ljava/lang/String;

    if-eqz p2, :cond_9

    .line 14
    array-length p2, p2

    .line 15
    new-instance v0, La/b/a/r/a;

    const/4 v1, 0x1

    .line 16
    invoke-direct {v0, v1, p2}, La/b/a/r/a;-><init>(ZI)V

    .line 17
    iput-object v0, p0, La/b/a/o/m/b;->b:La/b/a/r/a;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_3

    .line 18
    iget-object v2, p1, La/b/a/o/m/b$a;->c:La/b/a/n/a;

    if-nez v2, :cond_2

    .line 19
    sget-object v2, La/b/a/e;->e:La/b/a/d;

    iget-object v3, p1, La/b/a/o/m/b$a;->b:[Ljava/lang/String;

    aget-object v3, v3, v0

    check-cast v2, La/b/a/m/a/i;

    invoke-virtual {v2, v3}, La/b/a/m/a/i;->c(Ljava/lang/String;)La/b/a/n/a;

    move-result-object v2

    goto :goto_2

    .line 20
    :cond_2
    sget-object v3, La/b/a/e;->e:La/b/a/d;

    iget-object v4, p1, La/b/a/o/m/b$a;->b:[Ljava/lang/String;

    aget-object v4, v4, v0

    .line 21
    iget-object v2, v2, La/b/a/n/a;->b:La/b/a/d$a;

    .line 22
    check-cast v3, La/b/a/m/a/i;

    invoke-virtual {v3, v4, v2}, La/b/a/m/a/i;->a(Ljava/lang/String;La/b/a/d$a;)La/b/a/n/a;

    move-result-object v2

    .line 23
    :goto_2
    iget-object v3, p0, La/b/a/o/m/b;->b:La/b/a/r/a;

    new-instance v4, La/b/a/o/m/h;

    new-instance v5, La/b/a/o/i;

    invoke-direct {v5, v2, p3}, La/b/a/o/i;-><init>(La/b/a/n/a;Z)V

    invoke-direct {v4, v5}, La/b/a/o/m/h;-><init>(La/b/a/o/i;)V

    invoke-virtual {v3, v4}, La/b/a/r/a;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 24
    :cond_3
    iput-boolean v1, p0, La/b/a/o/m/b;->e:Z

    .line 25
    :goto_3
    new-instance p2, La/b/a/o/m/c;

    iget-boolean v0, p0, La/b/a/o/m/b;->d:Z

    invoke-direct {p2, p0, v0}, La/b/a/o/m/c;-><init>(La/b/a/o/m/b;Z)V

    .line 26
    iput-object p2, p0, La/b/a/o/m/b;->c:La/b/a/o/m/c;

    .line 27
    iget-object p2, p1, La/b/a/o/m/b$a;->r:[[La/b/a/o/m/b$b;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_7

    aget-object v2, p2, v1

    if-nez v2, :cond_4

    goto :goto_6

    .line 28
    :cond_4
    array-length v3, v2

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_6

    aget-object v5, v2, v4

    if-eqz v5, :cond_5

    .line 29
    iget-object v6, p0, La/b/a/o/m/b;->b:La/b/a/r/a;

    iget v7, v5, La/b/a/o/m/b$b;->o:I

    invoke-virtual {v6, v7}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La/b/a/o/m/h;

    invoke-virtual {p1, v5, v6}, La/b/a/o/m/b$a;->a(La/b/a/o/m/b$b;La/b/a/o/m/h;)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 30
    :cond_7
    iget-object p2, p1, La/b/a/o/m/b$a;->s:La/b/a/o/m/b$b;

    if-eqz p2, :cond_8

    iget-object p3, p0, La/b/a/o/m/b;->b:La/b/a/r/a;

    iget v0, p2, La/b/a/o/m/b$b;->o:I

    invoke-virtual {p3, v0}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, La/b/a/o/m/h;

    invoke-virtual {p1, p2, p3}, La/b/a/o/m/b$a;->a(La/b/a/o/m/b$b;La/b/a/o/m/h;)V

    :cond_8
    return-void

    .line 31
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "If no regions are specified, the font data must have an images path."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method


# virtual methods
.method public a(La/b/a/o/m/a;Ljava/lang/CharSequence;FF)La/b/a/o/m/d;
    .locals 34

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, La/b/a/o/m/b;->c:La/b/a/o/m/c;

    .line 2
    iget-object v2, v1, La/b/a/o/m/c;->d:La/b/a/r/a;

    const/4 v3, 0x1

    invoke-static {v2, v3}, La/b/a/r/m;->a(La/b/a/r/a;Z)V

    .line 3
    iget-object v2, v1, La/b/a/o/m/c;->d:La/b/a/r/a;

    invoke-virtual {v2}, La/b/a/r/a;->clear()V

    .line 4
    iget-object v2, v1, La/b/a/o/m/c;->c:La/b/a/r/a;

    invoke-virtual {v2}, La/b/a/r/a;->clear()V

    .line 5
    iget-object v2, v1, La/b/a/o/m/c;->h:[I

    array-length v2, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    .line 6
    iget-object v6, v1, La/b/a/o/m/c;->i:[La/b/a/r/f;

    if-eqz v6, :cond_0

    aget-object v6, v6, v5

    .line 7
    iput v4, v6, La/b/a/r/f;->b:I

    .line 8
    :cond_0
    iget-object v6, v1, La/b/a/o/m/c;->h:[I

    aput v4, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, v0, La/b/a/o/m/b;->c:La/b/a/o/m/c;

    if-eqz v1, :cond_16

    .line 10
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    .line 11
    const-class v5, La/b/a/o/m/d;

    .line 12
    invoke-static {v5}, La/b/a/r/m;->a(Ljava/lang/Class;)La/b/a/r/l;

    move-result-object v5

    invoke-virtual {v5}, La/b/a/r/l;->b()Ljava/lang/Object;

    move-result-object v5

    .line 13
    move-object v15, v5

    check-cast v15, La/b/a/o/m/d;

    .line 14
    iget-object v5, v1, La/b/a/o/m/c;->d:La/b/a/r/a;

    invoke-virtual {v5, v15}, La/b/a/r/a;->add(Ljava/lang/Object;)V

    .line 15
    iget-object v6, v1, La/b/a/o/m/c;->a:La/b/a/o/m/b;

    iget-object v10, v1, La/b/a/o/m/c;->f:La/b/a/o/a;

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v5, v15

    move-object/from16 v7, p2

    invoke-virtual/range {v5 .. v14}, La/b/a/o/m/d;->a(La/b/a/o/m/b;Ljava/lang/CharSequence;IILa/b/a/o/a;FIZLjava/lang/String;)V

    .line 16
    iget-object v5, v1, La/b/a/o/m/c;->a:La/b/a/o/m/b;

    iget-object v6, v5, La/b/a/o/m/b;->a:La/b/a/o/m/b$a;

    iget v6, v6, La/b/a/o/m/b$a;->k:F

    add-float v6, p4, v6

    .line 17
    iget-object v5, v5, La/b/a/o/m/b;->b:La/b/a/r/a;

    iget v5, v5, La/b/a/r/a;->b:I

    .line 18
    iget-object v7, v1, La/b/a/o/m/c;->g:[[F

    array-length v8, v7

    if-ge v8, v5, :cond_4

    .line 19
    new-array v8, v5, [[F

    .line 20
    array-length v9, v7

    invoke-static {v7, v4, v8, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    iput-object v8, v1, La/b/a/o/m/c;->g:[[F

    .line 22
    new-array v7, v5, [I

    .line 23
    iget-object v8, v1, La/b/a/o/m/c;->h:[I

    array-length v9, v8

    invoke-static {v8, v4, v7, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    iput-object v7, v1, La/b/a/o/m/c;->h:[I

    .line 25
    new-array v7, v5, [La/b/a/r/f;

    .line 26
    iget-object v8, v1, La/b/a/o/m/c;->i:[La/b/a/r/f;

    if-eqz v8, :cond_2

    .line 27
    array-length v9, v8

    .line 28
    array-length v10, v8

    invoke-static {v8, v4, v7, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v5, :cond_3

    .line 29
    new-instance v8, La/b/a/r/f;

    const/16 v10, 0x10

    .line 30
    invoke-direct {v8, v3, v10}, La/b/a/r/f;-><init>(ZI)V

    .line 31
    aput-object v8, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 32
    :cond_3
    iput-object v7, v1, La/b/a/o/m/c;->i:[La/b/a/r/f;

    .line 33
    new-array v5, v5, [I

    iput-object v5, v1, La/b/a/o/m/c;->j:[I

    .line 34
    :cond_4
    iget-object v5, v1, La/b/a/o/m/c;->c:La/b/a/r/a;

    invoke-virtual {v5, v15}, La/b/a/r/a;->add(Ljava/lang/Object;)V

    .line 35
    iget-object v5, v1, La/b/a/o/m/c;->g:[[F

    array-length v5, v5

    if-ne v5, v3, :cond_6

    .line 36
    iget-object v5, v15, La/b/a/o/m/d;->a:La/b/a/r/a;

    iget v5, v5, La/b/a/r/a;->b:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v7, v5, :cond_5

    .line 37
    iget-object v9, v15, La/b/a/o/m/d;->a:La/b/a/r/a;

    invoke-virtual {v9, v7}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, La/b/a/o/m/d$a;

    iget-object v9, v9, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    iget v9, v9, La/b/a/r/a;->b:I

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 38
    :cond_5
    invoke-virtual {v1, v4, v8}, La/b/a/o/m/c;->a(II)V

    goto :goto_7

    .line 39
    :cond_6
    iget-object v5, v1, La/b/a/o/m/c;->j:[I

    .line 40
    array-length v7, v5

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_7

    .line 41
    aput v4, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 42
    :cond_7
    iget-object v7, v15, La/b/a/o/m/d;->a:La/b/a/r/a;

    iget v7, v7, La/b/a/r/a;->b:I

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_9

    .line 43
    iget-object v9, v15, La/b/a/o/m/d;->a:La/b/a/r/a;

    invoke-virtual {v9, v8}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, La/b/a/o/m/d$a;

    iget-object v9, v9, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    .line 44
    iget v10, v9, La/b/a/r/a;->b:I

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v10, :cond_8

    .line 45
    invoke-virtual {v9, v11}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, La/b/a/o/m/b$b;

    iget v12, v12, La/b/a/o/m/b$b;->o:I

    aget v13, v5, v12

    add-int/2addr v13, v3

    aput v13, v5, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 46
    :cond_9
    array-length v7, v5

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v7, :cond_a

    .line 47
    aget v9, v5, v8

    invoke-virtual {v1, v8, v9}, La/b/a/o/m/c;->a(II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 48
    :cond_a
    :goto_7
    iget-object v5, v15, La/b/a/o/m/d;->a:La/b/a/r/a;

    iget v5, v5, La/b/a/r/a;->b:I

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v5, :cond_e

    .line 49
    iget-object v8, v15, La/b/a/o/m/d;->a:La/b/a/r/a;

    invoke-virtual {v8, v7}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La/b/a/o/m/d$a;

    .line 50
    iget-object v9, v8, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    .line 51
    iget-object v10, v8, La/b/a/o/m/d$a;->b:La/b/a/r/b;

    .line 52
    iget-object v11, v8, La/b/a/o/m/d$a;->f:La/b/a/o/a;

    invoke-virtual {v11}, La/b/a/o/a;->a()F

    move-result v11

    .line 53
    iget v12, v8, La/b/a/o/m/d$a;->c:F

    add-float v12, p3, v12

    iget v8, v8, La/b/a/o/m/d$a;->d:F

    add-float/2addr v8, v6

    .line 54
    iget v13, v9, La/b/a/r/a;->b:I

    const/4 v14, 0x0

    :goto_9
    if-ge v14, v13, :cond_d

    .line 55
    invoke-virtual {v9, v14}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, La/b/a/o/m/b$b;

    .line 56
    invoke-virtual {v10, v14}, La/b/a/r/b;->a(I)F

    move-result v16

    add-float v12, v16, v12

    .line 57
    iget-object v3, v1, La/b/a/o/m/c;->a:La/b/a/o/m/b;

    iget-object v3, v3, La/b/a/o/m/b;->a:La/b/a/o/m/b$a;

    iget v4, v3, La/b/a/o/m/b$a;->o:F

    iget v3, v3, La/b/a/o/m/b$a;->p:F

    move/from16 p2, v5

    .line 58
    iget v5, v2, La/b/a/o/m/b$b;->j:I

    int-to-float v5, v5

    mul-float v5, v5, v4

    add-float/2addr v5, v12

    move/from16 p4, v6

    .line 59
    iget v6, v2, La/b/a/o/m/b$b;->k:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    add-float/2addr v6, v8

    move/from16 v18, v8

    .line 60
    iget v8, v2, La/b/a/o/m/b$b;->d:I

    int-to-float v8, v8

    mul-float v8, v8, v4

    iget v4, v2, La/b/a/o/m/b$b;->e:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    .line 61
    iget v3, v2, La/b/a/o/m/b$b;->f:F

    move-object/from16 v19, v9

    iget v9, v2, La/b/a/o/m/b$b;->h:F

    move-object/from16 v20, v10

    iget v10, v2, La/b/a/o/m/b$b;->g:F

    move/from16 v21, v12

    iget v12, v2, La/b/a/o/m/b$b;->i:F

    move/from16 v22, v13

    .line 62
    iget-boolean v13, v1, La/b/a/o/m/c;->b:Z

    if-eqz v13, :cond_b

    .line 63
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    .line 64
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    .line 65
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    .line 66
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    :cond_b
    add-float/2addr v8, v5

    add-float/2addr v4, v6

    .line 67
    iget v2, v2, La/b/a/o/m/b$b;->o:I

    .line 68
    iget-object v13, v1, La/b/a/o/m/c;->h:[I

    aget v23, v13, v2

    .line 69
    aget v24, v13, v2

    add-int/lit8 v24, v24, 0x14

    aput v24, v13, v2

    .line 70
    iget-object v13, v1, La/b/a/o/m/c;->i:[La/b/a/r/f;

    if-eqz v13, :cond_c

    aget-object v13, v13, v2

    move-object/from16 v24, v15

    iget v15, v1, La/b/a/o/m/c;->e:I

    add-int/lit8 v0, v15, 0x1

    iput v0, v1, La/b/a/o/m/c;->e:I

    invoke-virtual {v13, v15}, La/b/a/r/f;->a(I)V

    goto :goto_a

    :cond_c
    move-object/from16 v24, v15

    .line 71
    :goto_a
    iget-object v0, v1, La/b/a/o/m/c;->g:[[F

    aget-object v0, v0, v2

    add-int/lit8 v2, v23, 0x1

    .line 72
    aput v5, v0, v23

    add-int/lit8 v13, v2, 0x1

    .line 73
    aput v6, v0, v2

    add-int/lit8 v2, v13, 0x1

    .line 74
    aput v11, v0, v13

    add-int/lit8 v13, v2, 0x1

    .line 75
    aput v3, v0, v2

    add-int/lit8 v2, v13, 0x1

    .line 76
    aput v10, v0, v13

    add-int/lit8 v13, v2, 0x1

    .line 77
    aput v5, v0, v2

    add-int/lit8 v2, v13, 0x1

    .line 78
    aput v4, v0, v13

    add-int/lit8 v5, v2, 0x1

    .line 79
    aput v11, v0, v2

    add-int/lit8 v2, v5, 0x1

    .line 80
    aput v3, v0, v5

    add-int/lit8 v3, v2, 0x1

    .line 81
    aput v12, v0, v2

    add-int/lit8 v2, v3, 0x1

    .line 82
    aput v8, v0, v3

    add-int/lit8 v3, v2, 0x1

    .line 83
    aput v4, v0, v2

    add-int/lit8 v2, v3, 0x1

    .line 84
    aput v11, v0, v3

    add-int/lit8 v3, v2, 0x1

    .line 85
    aput v9, v0, v2

    add-int/lit8 v2, v3, 0x1

    .line 86
    aput v12, v0, v3

    add-int/lit8 v3, v2, 0x1

    .line 87
    aput v8, v0, v2

    add-int/lit8 v2, v3, 0x1

    .line 88
    aput v6, v0, v3

    add-int/lit8 v3, v2, 0x1

    .line 89
    aput v11, v0, v2

    add-int/lit8 v2, v3, 0x1

    .line 90
    aput v9, v0, v3

    .line 91
    aput v10, v0, v2

    add-int/lit8 v14, v14, 0x1

    move/from16 v5, p2

    move/from16 v6, p4

    move/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    move/from16 v12, v21

    move/from16 v13, v22

    move-object/from16 v15, v24

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_9

    :cond_d
    move/from16 p2, v5

    move/from16 p4, v6

    move-object/from16 v24, v15

    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_8

    :cond_e
    move-object/from16 v24, v15

    .line 92
    sget v0, La/b/a/o/a;->j:F

    move-object/from16 v0, p0

    .line 93
    iget-object v1, v0, La/b/a/o/m/b;->c:La/b/a/o/m/c;

    .line 94
    iget-object v2, v1, La/b/a/o/m/c;->a:La/b/a/o/m/b;

    .line 95
    iget-object v2, v2, La/b/a/o/m/b;->b:La/b/a/r/a;

    .line 96
    iget-object v3, v1, La/b/a/o/m/c;->g:[[F

    array-length v3, v3

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v3, :cond_15

    .line 97
    iget-object v5, v1, La/b/a/o/m/c;->h:[I

    aget v5, v5, v4

    if-lez v5, :cond_14

    .line 98
    iget-object v5, v1, La/b/a/o/m/c;->g:[[F

    aget-object v5, v5, v4

    .line 99
    invoke-virtual {v2, v4}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La/b/a/o/m/h;

    .line 100
    iget-object v6, v6, La/b/a/o/m/h;->a:La/b/a/o/i;

    .line 101
    iget-object v7, v1, La/b/a/o/m/c;->h:[I

    aget v7, v7, v4

    move-object/from16 v8, p1

    check-cast v8, Lcom/watabou/noosa/RenderedText$TextRenderBatch;

    if-eqz v8, :cond_13

    .line 102
    sget-object v8, Lcom/watabou/noosa/RenderedText$TextRenderBatch;->textBeingRendered:Lcom/watabou/noosa/RenderedText;

    .line 103
    sget-object v9, Lcom/watabou/noosa/RenderedText$TextRenderBatch;->buffers:Ljava/util/HashMap;

    div-int/lit8 v10, v7, 0x14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 104
    sget-object v9, Lcom/watabou/noosa/RenderedText$TextRenderBatch;->buffers:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/FloatBuffer;

    const/4 v11, 0x0

    .line 105
    invoke-virtual {v9, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_c

    .line 106
    :cond_f
    invoke-static {v10}, Lcom/watabou/glwrap/Quad;->createSet(I)Ljava/nio/FloatBuffer;

    move-result-object v9

    .line 107
    sget-object v11, Lcom/watabou/noosa/RenderedText$TextRenderBatch;->buffers:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    const/4 v11, 0x0

    :goto_d
    const/4 v12, 0x2

    const/4 v13, 0x4

    if-ge v11, v7, :cond_10

    .line 108
    sget-object v14, Lcom/watabou/noosa/RenderedText$TextRenderBatch;->vertices:[F

    add-int/lit8 v15, v11, 0x0

    aget v15, v5, v15

    const/16 v17, 0x0

    aput v15, v14, v17

    add-int/lit8 v15, v11, 0x1

    .line 109
    aget v15, v5, v15

    const/16 v16, 0x1

    aput v15, v14, v16

    add-int/lit8 v15, v11, 0x3

    .line 110
    aget v15, v5, v15

    aput v15, v14, v12

    add-int/lit8 v12, v11, 0x4

    .line 111
    aget v12, v5, v12

    const/4 v15, 0x3

    aput v12, v14, v15

    add-int/lit8 v12, v11, 0x5

    .line 112
    aget v12, v5, v12

    aput v12, v14, v13

    add-int/lit8 v12, v11, 0x6

    .line 113
    aget v12, v5, v12

    const/4 v13, 0x5

    aput v12, v14, v13

    add-int/lit8 v12, v11, 0x8

    .line 114
    aget v12, v5, v12

    const/4 v13, 0x6

    aput v12, v14, v13

    const/4 v12, 0x7

    add-int/lit8 v13, v11, 0x9

    .line 115
    aget v13, v5, v13

    aput v13, v14, v12

    add-int/lit8 v12, v11, 0xa

    .line 116
    aget v12, v5, v12

    const/16 v13, 0x8

    aput v12, v14, v13

    add-int/lit8 v12, v11, 0xb

    .line 117
    aget v12, v5, v12

    const/16 v13, 0x9

    aput v12, v14, v13

    add-int/lit8 v12, v11, 0xd

    .line 118
    aget v12, v5, v12

    const/16 v13, 0xa

    aput v12, v14, v13

    add-int/lit8 v12, v11, 0xe

    .line 119
    aget v12, v5, v12

    const/16 v13, 0xb

    aput v12, v14, v13

    const/16 v12, 0xc

    add-int/lit8 v13, v11, 0xf

    .line 120
    aget v13, v5, v13

    aput v13, v14, v12

    add-int/lit8 v12, v11, 0x10

    .line 121
    aget v12, v5, v12

    const/16 v13, 0xd

    aput v12, v14, v13

    add-int/lit8 v12, v11, 0x12

    .line 122
    aget v12, v5, v12

    const/16 v13, 0xe

    aput v12, v14, v13

    add-int/lit8 v12, v11, 0x13

    .line 123
    aget v12, v5, v12

    const/16 v13, 0xf

    aput v12, v14, v13

    .line 124
    invoke-virtual {v9, v14}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v11, v11, 0x14

    goto/16 :goto_d

    :cond_10
    const/4 v11, 0x0

    const/16 v16, 0x1

    .line 125
    invoke-virtual {v9, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 126
    invoke-static {}, Lcom/watabou/noosa/NoosaScript;->get()Lcom/watabou/noosa/NoosaScript;

    move-result-object v5

    .line 127
    invoke-virtual {v6}, La/b/a/o/e;->a()V

    .line 128
    sput v11, Lcom/watabou/gltextures/SmartTexture;->bound_id:I

    .line 129
    invoke-virtual {v8}, Lcom/watabou/noosa/Gizmo;->camera()Lcom/watabou/noosa/Camera;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/watabou/noosa/NoosaScript;->camera(Lcom/watabou/noosa/Camera;)V

    .line 130
    iget-object v6, v5, Lcom/watabou/noosa/NoosaScript;->uModel:Lcom/watabou/glwrap/Uniform;

    iget-object v7, v8, Lcom/watabou/noosa/Visual;->matrix:[F

    invoke-virtual {v6, v7}, Lcom/watabou/glwrap/Uniform;->valueM4([F)V

    .line 131
    iget v6, v8, Lcom/watabou/noosa/Visual;->rm:F

    iget v7, v8, Lcom/watabou/noosa/Visual;->gm:F

    iget v11, v8, Lcom/watabou/noosa/Visual;->bm:F

    iget v14, v8, Lcom/watabou/noosa/Visual;->am:F

    iget v15, v8, Lcom/watabou/noosa/Visual;->ra:F

    iget v12, v8, Lcom/watabou/noosa/Visual;->ga:F

    iget v13, v8, Lcom/watabou/noosa/Visual;->ba:F

    iget v8, v8, Lcom/watabou/noosa/Visual;->aa:F

    move-object/from16 v25, v5

    move/from16 v26, v6

    move/from16 v27, v7

    move/from16 v28, v11

    move/from16 v29, v14

    move/from16 v30, v15

    move/from16 v31, v12

    move/from16 v32, v13

    move/from16 v33, v8

    invoke-virtual/range {v25 .. v33}, Lcom/watabou/noosa/NoosaScript;->lighting(FFFFFFFF)V

    if-nez v10, :cond_11

    const/4 v5, 0x0

    :goto_e
    const/4 v6, 0x0

    goto :goto_f

    :cond_11
    const/4 v6, 0x0

    .line 132
    invoke-virtual {v9, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 133
    iget-object v6, v5, Lcom/watabou/noosa/NoosaScript;->aXY:Lcom/watabou/glwrap/Attribute;

    const/4 v7, 0x2

    const/4 v8, 0x4

    invoke-virtual {v6, v7, v8, v9}, Lcom/watabou/glwrap/Attribute;->vertexPointer(IILjava/nio/FloatBuffer;)V

    .line 134
    invoke-virtual {v9, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 135
    iget-object v5, v5, Lcom/watabou/noosa/NoosaScript;->aUV:Lcom/watabou/glwrap/Attribute;

    invoke-virtual {v5, v7, v8, v9}, Lcom/watabou/glwrap/Attribute;->vertexPointer(IILjava/nio/FloatBuffer;)V

    .line 136
    sget-object v5, La/b/a/e;->h:La/b/a/o/d;

    sget v6, Lcom/watabou/glwrap/Quad;->SIZE:I

    mul-int v6, v6, v10

    const/16 v7, 0x1403

    check-cast v5, La/b/a/m/a/j;

    if-eqz v5, :cond_12

    const/4 v5, 0x0

    .line 137
    invoke-static {v8, v6, v7, v5}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    goto :goto_e

    :cond_12
    const/4 v6, 0x0

    throw v6

    :cond_13
    const/4 v6, 0x0

    .line 138
    throw v6

    :cond_14
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x1

    :goto_f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    :cond_15
    return-object v24

    :cond_16
    const/4 v6, 0x0

    .line 139
    goto :goto_11

    :goto_10
    throw v6

    :goto_11
    goto :goto_10
.end method

.method public a()V
    .locals 3

    .line 140
    iget-boolean v0, p0, La/b/a/o/m/b;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 141
    :goto_0
    iget-object v1, p0, La/b/a/o/m/b;->b:La/b/a/r/a;

    iget v2, v1, La/b/a/r/a;->b:I

    if-ge v0, v2, :cond_0

    .line 142
    invoke-virtual {v1, v0}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/a/o/m/h;

    .line 143
    iget-object v1, v1, La/b/a/o/m/h;->a:La/b/a/o/i;

    .line 144
    invoke-virtual {v1}, La/b/a/o/i;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/o/m/b;->a:La/b/a/o/m/b$a;

    iget-object v0, v0, La/b/a/o/m/b$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

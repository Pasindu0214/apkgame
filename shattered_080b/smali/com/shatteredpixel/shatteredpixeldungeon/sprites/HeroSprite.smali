.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;
.source "HeroSprite.java"


# static fields
.field public static tiers:Lcom/watabou/noosa/TextureFilm;


# instance fields
.field public fly:Lcom/watabou/noosa/MovieClip$Animation;

.field public read:Lcom/watabou/noosa/MovieClip$Animation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;-><init>()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->spritesheet()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;->updateArmor()V

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->link(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die()V

    :goto_0
    return-void
.end method

.method public static avatar(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;I)Lcom/watabou/noosa/Image;
    .locals 5

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;->tiers()Lcom/watabou/noosa/TextureFilm;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/watabou/noosa/TextureFilm;->get(Ljava/lang/Object;)Lcom/watabou/utils/RectF;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/watabou/noosa/Image;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->spritesheet()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-direct {v0}, Lcom/watabou/noosa/Image;-><init>()V

    .line 4
    invoke-virtual {v0, p0}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 5
    iget-object p0, v0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/watabou/gltextures/SmartTexture;->uvRect(FFFF)Lcom/watabou/utils/RectF;

    move-result-object p0

    .line 6
    iget v1, p1, Lcom/watabou/utils/RectF;->left:F

    iget p1, p1, Lcom/watabou/utils/RectF;->top:F

    invoke-virtual {p0, v1, p1}, Lcom/watabou/utils/RectF;->shift(FF)Lcom/watabou/utils/RectF;

    .line 7
    invoke-virtual {v0, p0}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    return-object v0
.end method

.method public static tiers()Lcom/watabou/noosa/TextureFilm;
    .locals 4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;->tiers:Lcom/watabou/noosa/TextureFilm;

    if-nez v0, :cond_0

    const-string v0, "rogue.png"

    .line 2
    invoke-static {v0}, Lcom/watabou/gltextures/TextureCache;->get(Ljava/lang/Object;)Lcom/watabou/gltextures/SmartTexture;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/watabou/noosa/TextureFilm;

    iget v2, v0, Lcom/watabou/gltextures/SmartTexture;->width:I

    const/16 v3, 0xf

    invoke-direct {v1, v0, v2, v3}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;II)V

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;->tiers:Lcom/watabou/noosa/TextureFilm;

    .line 4
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;->tiers:Lcom/watabou/noosa/TextureFilm;

    return-object v0
.end method


# virtual methods
.method public bloodBurstA(Lcom/watabou/utils/PointF;I)V
    .locals 0

    return-void
.end method

.method public jump(IILcom/watabou/utils/Callback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->jump(IILcom/watabou/utils/Callback;)V

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;->fly:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method

.method public move(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->move(II)V

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-boolean p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->flying:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;->fly:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    .line 4
    :cond_0
    sget-object p1, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    const/high16 p2, 0x41a00000    # 20.0f

    .line 5
    iput-object p0, p1, Lcom/watabou/noosa/Camera;->followTarget:Lcom/watabou/noosa/Visual;

    .line 6
    iput p2, p1, Lcom/watabou/noosa/Camera;->panIntensity:F

    return-void
.end method

.method public place(I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->worldToCamera(I)Lcom/watabou/utils/PointF;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Visual;->point(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    .line 2
    sget-object p1, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    .line 3
    iput-object v0, p1, Lcom/watabou/noosa/Camera;->panTarget:Lcom/watabou/utils/PointF;

    .line 4
    iput v1, p1, Lcom/watabou/noosa/Camera;->panIntensity:F

    const/4 v0, 0x0

    .line 5
    iput-object v0, p1, Lcom/watabou/noosa/Camera;->followTarget:Lcom/watabou/noosa/Visual;

    return-void
.end method

.method public update()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-boolean v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->resting:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->sleeping:Z

    .line 2
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->update()V

    return-void
.end method

.method public updateArmor()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcom/watabou/noosa/TextureFilm;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;->tiers()Lcom/watabou/noosa/TextureFilm;

    move-result-object v2

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->tier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xc

    const/16 v5, 0xf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/watabou/noosa/TextureFilm;-><init>(Lcom/watabou/noosa/TextureFilm;Ljava/lang/Object;II)V

    .line 2
    new-instance v2, Lcom/watabou/noosa/MovieClip$Animation;

    const/4 v3, 0x1

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 4
    invoke-direct {v2, v3, v3}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    const/16 v6, 0x8

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v9, v7, v3

    const/4 v10, 0x2

    aput-object v9, v7, v10

    const/4 v11, 0x3

    aput-object v5, v7, v11

    const/4 v12, 0x4

    aput-object v9, v7, v12

    const/4 v13, 0x5

    aput-object v9, v7, v13

    const/4 v14, 0x6

    aput-object v5, v7, v14

    const/4 v15, 0x7

    aput-object v5, v7, v15

    invoke-virtual {v2, v1, v7}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 6
    new-instance v2, Lcom/watabou/noosa/MovieClip$Animation;

    const/16 v5, 0x14

    .line 7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 8
    invoke-direct {v2, v5, v3}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->run:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v4, v14, [Ljava/lang/Object;

    .line 9
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v4, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v4, v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v4, v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v4, v11

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v4, v12

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v4, v13

    invoke-static {v2, v1, v4, v5, v8}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v2

    .line 10
    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v4, v14, [Ljava/lang/Object;

    .line 11
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v8

    const/16 v14, 0x9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v4, v3

    const/16 v14, 0xa

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v4, v10

    const/16 v18, 0xb

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v4, v11

    const/16 v16, 0xc

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v4, v12

    aput-object v18, v4, v13

    const/16 v15, 0xf

    invoke-static {v2, v1, v4, v15, v8}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v2

    .line 12
    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v4, v12, [Ljava/lang/Object;

    const/16 v18, 0xd

    .line 13
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v4, v8

    const/16 v18, 0xe

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v4, v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v4, v10

    aput-object v9, v4, v11

    invoke-virtual {v2, v1, v4}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 14
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {v2}, Lcom/watabou/noosa/MovieClip$Animation;->clone()Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v2

    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap:Lcom/watabou/noosa/MovieClip$Animation;

    .line 15
    new-instance v2, Lcom/watabou/noosa/MovieClip$Animation;

    invoke-direct {v2, v6, v8}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->operate:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v4, v12, [Ljava/lang/Object;

    const/16 v9, 0x10

    .line 16
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/16 v15, 0x11

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v4, v3

    aput-object v9, v4, v10

    aput-object v15, v4, v11

    invoke-static {v2, v1, v4, v3, v3}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v2

    .line 17
    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;->fly:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v4, v3, [Ljava/lang/Object;

    const/16 v9, 0x12

    .line 18
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-static {v2, v1, v4, v5, v8}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v2

    .line 19
    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;->read:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v4, v14, [Ljava/lang/Object;

    const/16 v5, 0x13

    .line 20
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v7, v4, v3

    aput-object v7, v4, v10

    aput-object v7, v4, v11

    aput-object v7, v4, v12

    aput-object v7, v4, v13

    const/4 v3, 0x6

    aput-object v7, v4, v3

    const/4 v3, 0x7

    aput-object v7, v4, v3

    aput-object v7, v4, v6

    const/16 v3, 0x9

    aput-object v5, v4, v3

    invoke-virtual {v2, v1, v4}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 21
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die()V

    :goto_0
    return-void
.end method

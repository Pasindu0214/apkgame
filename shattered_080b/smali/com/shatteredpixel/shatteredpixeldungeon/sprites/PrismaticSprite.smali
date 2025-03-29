.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/PrismaticSprite;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;
.source "PrismaticSprite.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;-><init>()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->spritesheet()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/PrismaticSprite;->updateArmor(I)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method


# virtual methods
.method public link(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->link(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 2
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/PrismaticImage;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/PrismaticImage;->armTier:I

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/PrismaticSprite;->updateArmor(I)V

    return-void
.end method

.method public update()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;->update()V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->flashTime:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    .line 3
    sget v0, Lcom/watabou/noosa/Game;->timeTotal:F

    const/high16 v2, 0x41100000    # 9.0f

    rem-float/2addr v0, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v5, v0, v4

    if-lez v5, :cond_0

    sub-float v5, v0, v4

    goto :goto_0

    :cond_0
    sub-float v5, v3, v0

    .line 4
    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    :goto_0
    cmpl-float v6, v0, v3

    if-lez v6, :cond_1

    sub-float v6, v4, v0

    .line 5
    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    cmpl-float v4, v0, v4

    if-lez v4, :cond_2

    sub-float/2addr v2, v0

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_2

    :cond_2
    sub-float/2addr v0, v3

    :goto_2
    const/high16 v1, 0x3f000000    # 0.5f

    .line 7
    invoke-virtual {p0, v5, v6, v0, v1}, Lcom/watabou/noosa/Visual;->tint(FFFF)V

    :cond_3
    return-void
.end method

.method public updateArmor(I)V
    .locals 14

    .line 1
    new-instance v0, Lcom/watabou/noosa/TextureFilm;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;->tiers()Lcom/watabou/noosa/TextureFilm;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v2, 0xf

    const/16 v3, 0xc

    invoke-direct {v0, v1, p1, v3, v2}, Lcom/watabou/noosa/TextureFilm;-><init>(Lcom/watabou/noosa/TextureFilm;Ljava/lang/Object;II)V

    .line 2
    new-instance p1, Lcom/watabou/noosa/MovieClip$Animation;

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4
    invoke-direct {p1, v1, v1}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object v6, v4, v1

    const/4 v7, 0x2

    aput-object v6, v4, v7

    const/4 v8, 0x3

    aput-object v3, v4, v8

    const/4 v9, 0x4

    aput-object v6, v4, v9

    const/4 v10, 0x5

    aput-object v6, v4, v10

    const/4 v11, 0x6

    aput-object v3, v4, v11

    const/4 v12, 0x7

    aput-object v3, v4, v12

    const/16 v3, 0x14

    invoke-static {p1, v0, v4, v3, v1}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object p1

    .line 6
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->run:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v4, v11, [Ljava/lang/Object;

    .line 7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v4, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v4, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v4, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v4, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v10

    invoke-static {p1, v0, v4, v3, v5}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v6, v3, v5

    .line 9
    invoke-static {p1, v0, v3, v2, v5}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v3, v9, [Ljava/lang/Object;

    const/16 v4, 0xd

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v7

    aput-object v6, v3, v8

    invoke-virtual {p1, v0, v3}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 12
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method

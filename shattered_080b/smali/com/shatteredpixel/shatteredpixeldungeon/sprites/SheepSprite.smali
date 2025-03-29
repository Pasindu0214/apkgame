.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/SheepSprite;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;
.source "SheepSprite.java"


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;-><init>()V

    const-string v0, "sheep.png"

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/watabou/noosa/TextureFilm;

    iget-object v1, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/16 v2, 0xf

    const/16 v3, 0x10

    invoke-direct {v0, v1, v3, v2}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;II)V

    .line 4
    new-instance v1, Lcom/watabou/noosa/MovieClip$Animation;

    const/16 v4, 0x8

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    aput-object v7, v3, v5

    const/4 v8, 0x2

    aput-object v7, v3, v8

    const/4 v9, 0x3

    aput-object v7, v3, v9

    const/4 v10, 0x4

    aput-object v7, v3, v10

    const/4 v10, 0x5

    aput-object v7, v3, v10

    const/4 v10, 0x6

    aput-object v7, v3, v10

    const/4 v10, 0x7

    aput-object v7, v3, v10

    aput-object v7, v3, v4

    const/16 v4, 0x9

    aput-object v7, v3, v4

    const/16 v4, 0xa

    aput-object v7, v3, v4

    const/16 v4, 0xb

    aput-object v7, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v10, 0xc

    aput-object v4, v3, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v8, 0xd

    aput-object v4, v3, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v8, 0xe

    aput-object v4, v3, v8

    aput-object v7, v3, v2

    invoke-virtual {v1, v0, v3}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 6
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {v1}, Lcom/watabou/noosa/MovieClip$Animation;->clone()Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->run:Lcom/watabou/noosa/MovieClip$Animation;

    .line 7
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {v1}, Lcom/watabou/noosa/MovieClip$Animation;->clone()Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack:Lcom/watabou/noosa/MovieClip$Animation;

    .line 8
    new-instance v1, Lcom/watabou/noosa/MovieClip$Animation;

    const/16 v2, 0x14

    invoke-direct {v1, v2, v6}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v7, v2, v6

    .line 9
    invoke-virtual {v1, v0, v2}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 10
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    .line 11
    iget-object v0, p0, Lcom/watabou/noosa/MovieClip;->curAnim:Lcom/watabou/noosa/MovieClip$Animation;

    iget-object v0, v0, Lcom/watabou/noosa/MovieClip$Animation;->frames:[Lcom/watabou/utils/RectF;

    array-length v0, v0

    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    iput v0, p0, Lcom/watabou/noosa/MovieClip;->curFrame:I

    return-void
.end method

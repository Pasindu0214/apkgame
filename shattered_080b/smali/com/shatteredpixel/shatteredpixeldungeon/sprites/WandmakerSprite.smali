.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WandmakerSprite;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;
.source "WandmakerSprite.java"


# direct methods
.method public constructor <init>()V
    .locals 13

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;-><init>()V

    const-string v0, "wandmaker.png"

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/watabou/noosa/TextureFilm;

    iget-object v1, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/16 v2, 0xe

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;II)V

    .line 4
    new-instance v1, Lcom/watabou/noosa/MovieClip$Animation;

    const/16 v4, 0xa

    const/4 v5, 0x1

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 6
    invoke-direct {v1, v4, v5}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    const/16 v7, 0x18

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 7
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v9, v7, v5

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v9, v7, v10

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v9, v7, v10

    const/4 v10, 0x4

    aput-object v9, v7, v10

    const/4 v10, 0x5

    aput-object v9, v7, v10

    const/4 v10, 0x6

    aput-object v9, v7, v10

    const/4 v10, 0x7

    aput-object v9, v7, v10

    const/16 v10, 0x8

    aput-object v9, v7, v10

    const/16 v10, 0x9

    aput-object v9, v7, v10

    aput-object v9, v7, v4

    const/16 v4, 0xb

    aput-object v9, v7, v4

    aput-object v9, v7, v3

    const/16 v3, 0xd

    aput-object v9, v7, v3

    aput-object v6, v7, v2

    const/16 v2, 0xf

    aput-object v11, v7, v2

    const/16 v2, 0x10

    aput-object v12, v7, v2

    const/16 v2, 0x11

    aput-object v12, v7, v2

    const/16 v2, 0x12

    aput-object v12, v7, v2

    const/16 v2, 0x13

    aput-object v12, v7, v2

    const/16 v2, 0x14

    aput-object v12, v7, v2

    const/16 v3, 0x15

    aput-object v12, v7, v3

    const/16 v3, 0x16

    aput-object v11, v7, v3

    const/16 v3, 0x17

    aput-object v6, v7, v3

    invoke-static {v1, v0, v7, v2, v5}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v1

    .line 8
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->run:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v9, v3, v8

    .line 9
    invoke-static {v1, v0, v3, v2, v8}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v1

    .line 10
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v9, v2, v8

    .line 11
    invoke-virtual {v1, v0, v2}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method


# virtual methods
.method public die()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->SHIELDED:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;)V

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/ElmoParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const v2, 0x3cf5c28f    # 0.03f

    const/16 v3, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 4
    iget-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_burning.mp3"

    .line 6
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    :cond_0
    return-void
.end method

.method public link(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->link(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 2
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->SHIELDED:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->add(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;)V

    return-void
.end method

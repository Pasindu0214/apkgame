.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/FetidRatSprite;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;
.source "FetidRatSprite.java"


# instance fields
.field public cloud:Lcom/watabou/noosa/particles/Emitter;


# direct methods
.method public constructor <init>()V
    .locals 13

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;-><init>()V

    const-string v0, "rat.png"

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

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Object;

    const/16 v7, 0x20

    .line 5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    aput-object v7, v6, v4

    aput-object v7, v6, v3

    const/16 v9, 0x21

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v6, v10

    const/16 v9, 0xa

    invoke-static {v1, v0, v6, v9, v4}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v1

    .line 6
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->run:Lcom/watabou/noosa/MovieClip$Animation;

    const/4 v6, 0x5

    new-array v11, v6, [Ljava/lang/Object;

    const/16 v12, 0x26

    .line 7
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    const/16 v12, 0x27

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v4

    const/16 v12, 0x28

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v3

    const/16 v12, 0x29

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v10

    const/16 v12, 0x2a

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-static {v1, v0, v11, v2, v8}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v1

    .line 8
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v2, v6, [Ljava/lang/Object;

    const/16 v6, 0x22

    .line 9
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v8

    const/16 v6, 0x23

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    const/16 v6, 0x24

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/16 v6, 0x25

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v10

    aput-object v7, v2, v5

    invoke-static {v1, v0, v2, v9, v8}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v1

    .line 10
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v2, v5, [Ljava/lang/Object;

    const/16 v5, 0x2b

    .line 11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v8

    const/16 v5, 0x2c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/16 v4, 0x2d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v1, v0, v2}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method


# virtual methods
.method public kill()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->kill()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/FetidRatSprite;->cloud:Lcom/watabou/noosa/particles/Emitter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/watabou/noosa/particles/Emitter;->on:Z

    :cond_0
    return-void
.end method

.method public link(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->link(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/FetidRatSprite;->cloud:Lcom/watabou/noosa/particles/Emitter;

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/FetidRatSprite;->cloud:Lcom/watabou/noosa/particles/Emitter;

    const/16 v0, 0x6f

    .line 4
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v0

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v0, v1, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    :cond_0
    return-void
.end method

.method public update()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;->update()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/FetidRatSprite;->cloud:Lcom/watabou/noosa/particles/Emitter;

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    :cond_0
    return-void
.end method

.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/BlacksmithSprite;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;
.source "BlacksmithSprite.java"


# instance fields
.field public emitter:Lcom/watabou/noosa/particles/Emitter;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;-><init>()V

    const-string v0, "blacksmith.png"

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/watabou/noosa/TextureFilm;

    iget-object v1, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/16 v2, 0xd

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;II)V

    .line 4
    new-instance v1, Lcom/watabou/noosa/MovieClip$Animation;

    const/4 v2, 0x1

    const/16 v3, 0xf

    invoke-direct {v1, v3, v2}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v5, v3, v2

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v5, v3, v6

    const/4 v6, 0x3

    aput-object v5, v3, v6

    const/4 v8, 0x4

    aput-object v5, v3, v8

    const/4 v8, 0x5

    aput-object v5, v3, v8

    const/4 v8, 0x6

    aput-object v5, v3, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x7

    aput-object v8, v3, v9

    const/16 v8, 0x8

    aput-object v7, v3, v8

    const/16 v8, 0x9

    aput-object v7, v3, v8

    const/16 v8, 0xa

    aput-object v7, v3, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0xb

    aput-object v6, v3, v7

    const/16 v6, 0x14

    invoke-static {v1, v0, v3, v6, v2}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v1

    .line 6
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->run:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v5, v3, v4

    .line 7
    invoke-static {v1, v0, v3, v6, v4}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v1

    .line 8
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v4

    .line 9
    invoke-virtual {v1, v0, v2}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 10
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method


# virtual methods
.method public link(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->link(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 2
    new-instance p1, Lcom/watabou/noosa/particles/Emitter;

    invoke-direct {p1}, Lcom/watabou/noosa/particles/Emitter;-><init>()V

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/BlacksmithSprite;->emitter:Lcom/watabou/noosa/particles/Emitter;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Lcom/watabou/noosa/particles/Emitter;->autoKill:Z

    .line 4
    iget v0, p0, Lcom/watabou/noosa/Visual;->x:F

    const/high16 v1, 0x40e00000    # 7.0f

    add-float/2addr v0, v1

    iget v1, p0, Lcom/watabou/noosa/Visual;->y:F

    const/high16 v2, 0x41400000    # 12.0f

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/watabou/noosa/particles/Emitter;->pos(FF)V

    .line 5
    iget-object p1, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/BlacksmithSprite;->emitter:Lcom/watabou/noosa/particles/Emitter;

    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public onComplete(Lcom/watabou/noosa/MovieClip$Animation;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;->onComplete(Lcom/watabou/noosa/MovieClip$Animation;)V

    .line 2
    iget-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/BlacksmithSprite;->emitter:Lcom/watabou/noosa/particles/Emitter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    if-ne p1, v1, :cond_0

    iget-boolean p1, p0, Lcom/watabou/noosa/MovieClip;->paused:Z

    if-nez p1, :cond_0

    const/16 p1, 0x70

    .line 3
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object p1

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, p1, v2, v1}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    const p1, 0x3e4ccccd    # 0.2f

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 6
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const v1, 0x3f4ccccd    # 0.8f

    const-string v2, "snd_evoke.mp3"

    invoke-virtual {v0, v2, p1, p1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    :cond_0
    return-void
.end method

.method public update()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;->update()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/BlacksmithSprite;->emitter:Lcom/watabou/noosa/particles/Emitter;

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    :cond_0
    return-void
.end method

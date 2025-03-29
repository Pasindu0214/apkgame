.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ShopkeeperSprite;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;
.source "ShopkeeperSprite.java"


# instance fields
.field public coin:Lcom/watabou/noosa/particles/PixelParticle;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;-><init>()V

    const-string v0, "shopkeeper.png"

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/watabou/noosa/TextureFilm;

    iget-object v1, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v2}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;II)V

    .line 4
    new-instance v1, Lcom/watabou/noosa/MovieClip$Animation;

    const/4 v2, 0x1

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xa

    .line 6
    invoke-direct {v1, v4, v2}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v3, v4, v5

    aput-object v3, v4, v2

    const/4 v7, 0x2

    aput-object v3, v4, v7

    const/4 v7, 0x3

    aput-object v3, v4, v7

    const/4 v7, 0x4

    aput-object v3, v4, v7

    const/4 v3, 0x5

    aput-object v6, v4, v3

    const/4 v3, 0x6

    aput-object v6, v4, v3

    const/4 v3, 0x7

    aput-object v6, v4, v3

    const/16 v3, 0x8

    aput-object v6, v4, v3

    const/16 v3, 0x14

    invoke-static {v1, v0, v4, v3, v5}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v1

    .line 8
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v5

    .line 9
    invoke-virtual {v1, v0, v2}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 10
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {v0}, Lcom/watabou/noosa/MovieClip$Animation;->clone()Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->run:Lcom/watabou/noosa/MovieClip$Animation;

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {v0}, Lcom/watabou/noosa/MovieClip$Animation;->clone()Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack:Lcom/watabou/noosa/MovieClip$Animation;

    .line 12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/watabou/noosa/MovieClip$Animation;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;->onComplete(Lcom/watabou/noosa/MovieClip$Animation;)V

    .line 2
    iget-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ShopkeeperSprite;->coin:Lcom/watabou/noosa/particles/PixelParticle;

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/watabou/noosa/particles/PixelParticle;

    invoke-direct {p1}, Lcom/watabou/noosa/particles/PixelParticle;-><init>()V

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ShopkeeperSprite;->coin:Lcom/watabou/noosa/particles/PixelParticle;

    .line 5
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    invoke-virtual {v0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ShopkeeperSprite;->coin:Lcom/watabou/noosa/particles/PixelParticle;

    iget p1, p0, Lcom/watabou/noosa/Visual;->x:F

    iget-boolean v0, p0, Lcom/watabou/noosa/Image;->flipHorizontal:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0xd

    :goto_0
    int-to-float v0, v0

    add-float v2, p1, v0

    iget p1, p0, Lcom/watabou/noosa/Visual;->y:F

    const/high16 v0, 0x40e00000    # 7.0f

    add-float v3, p1, v0

    const v4, 0xffff00

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual/range {v1 .. v6}, Lcom/watabou/noosa/particles/PixelParticle;->reset(FFIFF)V

    .line 7
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ShopkeeperSprite;->coin:Lcom/watabou/noosa/particles/PixelParticle;

    iget-object v0, p1, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const/high16 v1, -0x3de00000    # -40.0f

    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    .line 8
    iget-object p1, p1, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    const/high16 v0, 0x43200000    # 160.0f

    iput v0, p1, Lcom/watabou/utils/PointF;->y:F

    :cond_2
    return-void
.end method

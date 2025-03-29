.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/ShockingDart;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;
.source "ShockingDart.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SHOCKING_DART:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 9

    const/16 v0, 0x8

    const/16 v1, 0xc

    .line 1
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    invoke-virtual {p2, v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;

    new-instance v3, Lcom/watabou/utils/PointF;

    iget v4, v0, Lcom/watabou/noosa/Visual;->x:F

    iget v5, v0, Lcom/watabou/noosa/Visual;->y:F

    iget v6, v0, Lcom/watabou/noosa/Visual;->height:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v5

    invoke-direct {v3, v4, v6}, Lcom/watabou/utils/PointF;-><init>(FF)V

    new-instance v4, Lcom/watabou/utils/PointF;

    iget v5, v0, Lcom/watabou/noosa/Visual;->x:F

    iget v6, v0, Lcom/watabou/noosa/Visual;->width:F

    add-float/2addr v5, v6

    iget v6, v0, Lcom/watabou/noosa/Visual;->y:F

    iget v8, v0, Lcom/watabou/noosa/Visual;->height:F

    div-float/2addr v8, v7

    add-float/2addr v8, v6

    invoke-direct {v4, v5, v8}, Lcom/watabou/utils/PointF;-><init>(FF)V

    invoke-direct {v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;-><init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;

    new-instance v3, Lcom/watabou/utils/PointF;

    iget v4, v0, Lcom/watabou/noosa/Visual;->x:F

    iget v5, v0, Lcom/watabou/noosa/Visual;->width:F

    div-float/2addr v5, v7

    add-float/2addr v5, v4

    iget v4, v0, Lcom/watabou/noosa/Visual;->y:F

    invoke-direct {v3, v5, v4}, Lcom/watabou/utils/PointF;-><init>(FF)V

    new-instance v4, Lcom/watabou/utils/PointF;

    iget v5, v0, Lcom/watabou/noosa/Visual;->x:F

    iget v6, v0, Lcom/watabou/noosa/Visual;->width:F

    div-float/2addr v6, v7

    add-float/2addr v6, v5

    iget v5, v0, Lcom/watabou/noosa/Visual;->y:F

    iget v7, v0, Lcom/watabou/noosa/Visual;->height:F

    add-float/2addr v5, v7

    invoke-direct {v4, v6, v5}, Lcom/watabou/utils/PointF;-><init>(FF)V

    invoke-direct {v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;-><init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;-><init>(Ljava/util/List;Lcom/watabou/utils/Callback;)V

    invoke-virtual {v0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 8
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_lightning.mp3"

    .line 9
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 10
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;->proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result p1

    return p1
.end method

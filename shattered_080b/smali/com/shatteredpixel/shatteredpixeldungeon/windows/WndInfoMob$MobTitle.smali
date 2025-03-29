.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob$MobTitle;
.super Lcom/watabou/noosa/ui/Component;
.source "WndInfoMob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MobTitle"
.end annotation


# instance fields
.field public buffs:Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;

.field public health:Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;

.field public image:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

.field public name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob$MobTitle;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v1, 0xffff44

    .line 3
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob$MobTitle;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 5
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->sprite()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob$MobTitle;->image:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    .line 6
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 7
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob$MobTitle;->health:Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;

    .line 8
    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;->level(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob$MobTitle;->health:Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 10
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;

    invoke-direct {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob$MobTitle;->buffs:Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;

    .line 11
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method


# virtual methods
.method public layout()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob$MobTitle;->image:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const/4 v1, 0x0

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 2
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob$MobTitle;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 3
    iget v2, v2, Lcom/watabou/noosa/ui/Component;->height:F

    .line 4
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob$MobTitle;->health:Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;

    .line 5
    iget v3, v3, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr v2, v3

    .line 6
    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob$MobTitle;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob$MobTitle;->image:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v3, v2, Lcom/watabou/noosa/Visual;->width:F

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    add-float/2addr v1, v3

    .line 8
    invoke-virtual {v2}, Lcom/watabou/noosa/Visual;->height()F

    move-result v2

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob$MobTitle;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 9
    iget v4, v4, Lcom/watabou/noosa/ui/Component;->height:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    .line 10
    iget v2, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob$MobTitle;->image:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v4}, Lcom/watabou/noosa/Visual;->height()F

    move-result v4

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob$MobTitle;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 11
    iget v5, v5, Lcom/watabou/noosa/ui/Component;->height:F

    invoke-static {v4, v5, v3, v2}, La/a/a/a/a;->a(FFFF)F

    move-result v2

    goto :goto_0

    .line 12
    :cond_0
    iget v2, p0, Lcom/watabou/noosa/ui/Component;->y:F

    .line 13
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 14
    iget v0, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob$MobTitle;->image:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v1}, Lcom/watabou/noosa/Visual;->width()F

    move-result v1

    sub-float/2addr v0, v1

    sub-float/2addr v0, v3

    .line 15
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob$MobTitle;->health:Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob$MobTitle;->image:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v2}, Lcom/watabou/noosa/Visual;->width()F

    move-result v2

    add-float/2addr v2, v3

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob$MobTitle;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v4}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v4

    add-float/2addr v4, v3

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob$MobTitle;->health:Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;

    .line 16
    iget v5, v5, Lcom/watabou/noosa/ui/Component;->height:F

    .line 17
    invoke-virtual {v1, v2, v4, v0, v5}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 18
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob$MobTitle;->buffs:Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob$MobTitle;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 19
    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v1

    add-float/2addr v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob$MobTitle;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 20
    invoke-virtual {v2}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v2

    const/high16 v4, 0x40e00000    # 7.0f

    sub-float/2addr v2, v4

    sub-float/2addr v2, v3

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 22
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob$MobTitle;->health:Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;

    invoke-virtual {v0}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v0

    iput v0, p0, Lcom/watabou/noosa/ui/Component;->height:F

    return-void
.end method

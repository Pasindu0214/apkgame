.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane$1;
.super Lcom/watabou/noosa/ui/Button;
.source "StatusPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;->createChildren()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/StatusPane;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Button;-><init>()V

    return-void
.end method


# virtual methods
.method public keyAction()Lcom/watabou/input/GameAction;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->HERO_INFO:Lcom/watabou/input/GameAction;

    return-object v0
.end method

.method public onClick()V
    .locals 2

    .line 1
    sget-object v0, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v1}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v1

    .line 2
    iput-object v1, v0, Lcom/watabou/noosa/Camera;->panTarget:Lcom/watabou/utils/PointF;

    const/high16 v1, 0x40a00000    # 5.0f

    .line 3
    iput v1, v0, Lcom/watabou/noosa/Camera;->panIntensity:F

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/watabou/noosa/Camera;->followTarget:Lcom/watabou/noosa/Visual;

    .line 5
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;-><init>()V

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    return-void
.end method

.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;
.source "PoisonDartTrap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap;->activate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap;

.field public final synthetic val$finalTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

.field public final synthetic val$trap:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap;

    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;->val$finalTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;->val$trap:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;-><init>()V

    const/16 p1, 0x64

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->actPriority:I

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v0, v0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 2
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;->val$finalTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/PoisonDart;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/PoisonDart;-><init>()V

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1$1;

    invoke-direct {v4, p0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap$1;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;)V

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object v1

    invoke-virtual {v2, v0}, Lcom/watabou/noosa/Visual;->center(Lcom/watabou/noosa/Visual;)Lcom/watabou/utils/PointF;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;->reset(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/watabou/utils/Callback;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

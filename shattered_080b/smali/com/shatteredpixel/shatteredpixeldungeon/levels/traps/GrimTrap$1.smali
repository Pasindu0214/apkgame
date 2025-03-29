.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;
.source "GrimTrap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap;->activate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap;

.field public final synthetic val$finalDmg:I

.field public final synthetic val$finalTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

.field public final synthetic val$trap:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;ILcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap;

    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1;->val$finalTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iput p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1;->val$finalDmg:I

    iput-object p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1;->val$trap:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap;

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
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1;->val$finalTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v0, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    .line 2
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileCenterToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object v1

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1;->val$finalTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    .line 3
    invoke-virtual {v2}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v2

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1$1;

    invoke-direct {v3, p0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrimTrap$1;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;)V

    const/4 v4, 0x7

    .line 4
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->reset(ILcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;Lcom/watabou/utils/Callback;)V

    const/4 v0, 0x0

    return v0
.end method

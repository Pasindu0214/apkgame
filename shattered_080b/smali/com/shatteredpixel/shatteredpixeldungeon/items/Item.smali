.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Lcom/watabou/utils/Bundlable;


# static fields
.field public static curItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

.field public static curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

.field public static itemComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;"
        }
    .end annotation
.end field

.field public static thrower:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;


# instance fields
.field public bones:Z

.field public cursed:Z

.field public cursedKnown:Z

.field public defaultAction:Ljava/lang/String;

.field public dropsDownHeap:Z

.field public image:I

.field public level:I

.field public levelKnown:Z

.field public name:Ljava/lang/String;

.field public quantity:I

.field public stackable:Z

.field public unique:Z

.field public usesTargeting:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->itemComparator:Ljava/util/Comparator;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item$4;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item$4;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->thrower:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "name"

    .line 2
    invoke-static {p0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->stackable:Z

    const/4 v1, 0x1

    .line 5
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    .line 6
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->dropsDownHeap:Z

    .line 7
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 8
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    .line 9
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->unique:Z

    .line 10
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->bones:Z

    return-void
.end method

.method public static updateQuickslot()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    return-void
.end method


# virtual methods
.method public actions(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "DROP"

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "THROW"

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public buffedLvl()I
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Degrade;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level()I

    move-result v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Degrade;->reduceLevel(I)I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level()I

    move-result v0

    return v0
.end method

.method public buffedVisiblyUpgraded()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cast(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;I)V
    .locals 6

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;

    invoke-virtual {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->throwPos(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;I)I

    move-result v1

    .line 2
    iget-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap(I)V

    const/4 v2, 0x0

    .line 3
    iput-boolean v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    .line 4
    sget-object v2, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v3, 0x3fc00000    # 1.5f

    const v4, 0x3f19999a    # 0.6f

    const-string v5, "snd_miss.mp3"

    invoke-virtual {v2, v5, v4, v4, v3}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 5
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v2

    .line 6
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->target(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->castDelay(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)F

    move-result p2

    if-eqz v2, :cond_1

    .line 8
    iget-object v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v3, v3, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    invoke-virtual {v3, v0}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;

    iget-object v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item$2;

    invoke-direct {v4, p0, p1, v1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;IF)V

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v3, v0}, Lcom/watabou/noosa/Visual;->center(Lcom/watabou/noosa/Visual;)Lcom/watabou/utils/PointF;

    move-result-object p1

    invoke-virtual {v2, v0}, Lcom/watabou/noosa/Visual;->center(Lcom/watabou/noosa/Visual;)Lcom/watabou/utils/PointF;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;->reset(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/watabou/utils/Callback;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    .line 10
    :cond_1
    iget-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v2, v2, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    invoke-virtual {v2, v0}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;

    iget-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item$3;

    invoke-direct {v3, p0, p1, v1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;IF)V

    .line 11
    invoke-virtual {v0, v2, v1, p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;->reset(Lcom/watabou/noosa/Visual;ILcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/watabou/utils/Callback;)V

    :goto_0
    return-void
.end method

.method public castDelay(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public collect()Z
    .locals 1

    .line 26
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Z

    move-result v0

    return v0
.end method

.method public collect(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Z
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 4
    instance-of v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {v3, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->grab(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    .line 6
    :cond_2
    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->stackable:Z

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 8
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isSimilar(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9
    invoke-virtual {v3, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->merge(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 10
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    return v2

    .line 11
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->size:I

    const/4 v4, 0x0

    if-ge v1, v3, :cond_9

    .line 12
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateItemLevelAquired(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 14
    :cond_5
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    if-eqz p1, :cond_8

    :goto_0
    const/4 v1, 0x4

    if-ge v4, v1, :cond_7

    .line 16
    invoke-virtual {p1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->isPlaceholder(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 17
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->slots:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    aget-object v1, v1, v4

    .line 18
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isSimilar(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 19
    invoke-virtual {p1, v4, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->setSlot(ILcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 20
    :cond_7
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 21
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->itemComparator:Ljava/util/Comparator;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return v2

    :cond_8
    const/4 p1, 0x0

    .line 22
    throw p1

    .line 23
    :cond_9
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    new-array v1, v2, [Ljava/lang/Object;

    .line 24
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    aput-object p1, v1, v4

    const-string p1, "pack_full"

    .line 25
    invoke-static {v0, p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    return v4
.end method

.method public degrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    return-object p0
.end method

.method public final degrade(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->degrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public desc()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "desc"

    .line 1
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->stackable:Z

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->convertToPlaceholder(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detachAll(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->split(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->onDetach()V

    :cond_3
    return-object p1
.end method

.method public final detachAll(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->clearItem(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 3
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    if-ne v1, p0, :cond_1

    .line 4
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->onDetach()V

    return-object p0

    .line 6
    :cond_1
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    if-eqz v2, :cond_0

    .line 7
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    .line 8
    invoke-virtual {v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->contains(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detachAll(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p0
.end method

.method public doDrop(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    .line 2
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detachAll(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object p1

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop(I)V

    return-void
.end method

.method public doPickUp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->pickUp(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)V

    .line 3
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_item.mp3"

    .line 4
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 5
    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public doThrow(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->thrower:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectCell(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;)V

    return-void
.end method

.method public emitter()Lcom/watabou/noosa/particles/Emitter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V
    .locals 1

    .line 1
    sput-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 2
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    const-string v0, "DROP"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->contains(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->doDrop(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    goto :goto_0

    :cond_1
    const-string v0, "THROW"

    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 7
    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->contains(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 8
    :cond_2
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->doThrow(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public glowing()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->setSeen(Ljava/lang/Class;)V

    :cond_0
    return-object p0
.end method

.method public image()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return v0
.end method

.method public info()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->desc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isIdentified()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSimilar(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isUpgradable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    return v0
.end method

.method public level(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    return-void
.end method

.method public merge(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isSimilar(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    const/4 v0, 0x0

    .line 3
    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    :cond_0
    return-object p0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    return-object v0
.end method

.method public onDetach()V
    .locals 0

    return-void
.end method

.method public onHeroGainExp(FLcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 0

    return-void
.end method

.method public onThrow(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v0, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop(I)V

    :cond_0
    return-void
.end method

.method public price()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public quantity(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 0

    .line 1
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    return-object p0
.end method

.method public random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 0

    return-object p0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "name"

    .line 1
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    return-void
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    const-string v0, "quantity"

    .line 1
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    const-string v0, "levelKnown"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    const-string v0, "cursedKnown"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    const-string v0, "level"

    .line 4
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    neg-int v0, v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->degrade(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    :cond_1
    :goto_0
    const-string v0, "cursed"

    .line 7
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-nez v0, :cond_2

    const-string v0, "quickslotpos"

    .line 9
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->setSlot(ILcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    :cond_2
    return-void
.end method

.method public split(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 2

    const/4 v0, 0x0

    if-lez p1, :cond_2

    .line 1
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    if-nez v1, :cond_1

    return-object v0

    .line 3
    :cond_1
    new-instance v0, Lcom/watabou/utils/Bundle;

    invoke-direct {v0}, Lcom/watabou/utils/Bundle;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 5
    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    .line 6
    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 7
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public status()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    const-string v1, "quantity"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    const-string v1, "level"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    const-string v1, "levelKnown"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 4
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    const-string v1, "cursed"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 5
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    const-string v1, "cursedKnown"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->contains(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->getSlot(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)I

    move-result v0

    const-string v1, "quickslotpos"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public throwPos(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;I)I
    .locals 18

    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 1
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x7

    and-int/lit8 v6, v6, 0x1

    if-lez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x7

    and-int/lit8 v7, v7, 0x2

    if-lez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x7

    and-int/lit8 v8, v8, 0x4

    if-lez v8, :cond_2

    const/4 v4, 0x1

    .line 4
    :cond_2
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 5
    iget v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 6
    rem-int v9, v0, v8

    .line 7
    rem-int v10, v1, v8

    .line 8
    div-int v11, v0, v8

    .line 9
    div-int v12, v1, v8

    sub-int/2addr v10, v9

    sub-int/2addr v12, v11

    const/4 v9, -0x1

    if-lez v10, :cond_3

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, -0x1

    :goto_2
    if-lez v12, :cond_4

    const/4 v9, 0x1

    .line 10
    :cond_4
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 11
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    mul-int v9, v9, v8

    if-le v10, v12, :cond_5

    goto :goto_3

    :cond_5
    move/from16 v16, v11

    move v11, v9

    move/from16 v9, v16

    move/from16 v17, v12

    move v12, v10

    move/from16 v10, v17

    .line 12
    :goto_3
    div-int/lit8 v8, v10, 0x2

    move v13, v0

    .line 13
    :cond_6
    :goto_4
    sget-object v14, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v14, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->insideMap(I)Z

    move-result v14

    if-eqz v14, :cond_c

    if-eqz v4, :cond_7

    .line 14
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eq v13, v14, :cond_7

    sget-object v14, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v15, v14, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v15, v15, v13

    if-nez v15, :cond_7

    iget-object v14, v14, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v14, v14, v13

    if-nez v14, :cond_7

    const/4 v14, 0x1

    .line 15
    invoke-static {v2, v14}, La/a/a/a/a;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-nez v3, :cond_7

    .line 16
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 17
    :cond_7
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_8

    .line 18
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eq v13, v14, :cond_8

    sget-object v14, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v14, v14, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v14, v14, v13

    if-nez v14, :cond_a

    .line 19
    :cond_8
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eq v13, v14, :cond_9

    if-eqz v7, :cond_9

    invoke-static {v13}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v14

    if-nez v14, :cond_a

    :cond_9
    if-ne v13, v1, :cond_b

    if-eqz v6, :cond_b

    :cond_a
    if-nez v3, :cond_b

    .line 20
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_b
    add-int/2addr v13, v11

    add-int/2addr v8, v12

    if-lt v8, v10, :cond_6

    sub-int/2addr v8, v10

    add-int/2addr v13, v9

    goto :goto_4

    :cond_c
    if-eqz v3, :cond_d

    .line 21
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    goto :goto_5

    .line 22
    :cond_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    .line 23
    invoke-static {v2, v0}, La/a/a/a/a;->b(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Integer;

    goto :goto_5

    .line 24
    :cond_e
    invoke-static {v0, v2, v0}, La/a/a/a/a;->a(ILjava/util/ArrayList;I)Ljava/lang/Integer;

    move-result-object v3

    .line 25
    :goto_5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->visiblyUpgraded()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->visiblyUpgraded()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "%s %+d"

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_0
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    if-le v1, v4, :cond_1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "%s x%d"

    invoke-static {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    return-object p0
.end method

.method public final upgrade(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public visiblyUpgraded()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

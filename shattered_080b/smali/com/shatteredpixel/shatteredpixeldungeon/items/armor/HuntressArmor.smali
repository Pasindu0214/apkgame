.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/HuntressArmor;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;
.source "HuntressArmor.java"


# instance fields
.field public targets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/watabou/utils/Callback;",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARMOR_HUNTRESS:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/HuntressArmor;->targets:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public doSpecial()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Invisibility;->dispel()V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;->charge:F

    const/high16 v1, 0x420c0000    # 35.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/ClassArmor;->charge:F

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 4
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/Shuriken;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/Shuriken;-><init>()V

    .line 5
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 6
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v3, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v3

    const/16 v4, 0xc

    if-gt v3, v4, :cond_0

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-eq v3, v4, :cond_0

    .line 7
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/HuntressArmor$1;

    invoke-direct {v3, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/HuntressArmor$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/HuntressArmor;)V

    .line 8
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v4, v4, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;

    invoke-virtual {v4, v5}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v6, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 9
    invoke-virtual {v4, v5, v6, v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;->reset(IILcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/watabou/utils/Callback;)V

    .line 10
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/HuntressArmor;->targets:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/HuntressArmor;->targets:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    .line 12
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/HuntressArmor;

    const-string v3, "no_enemies"

    invoke-static {v2, v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 14
    :cond_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap(I)V

    .line 15
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 16
    iput-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    return-void
.end method

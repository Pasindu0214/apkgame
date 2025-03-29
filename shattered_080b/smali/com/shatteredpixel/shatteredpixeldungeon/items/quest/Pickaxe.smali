.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/Pickaxe;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;
.source "Pickaxe.java"


# static fields
.field public static final BLOODY:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;


# instance fields
.field public bloodStained:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x550000

    .line 2
    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 3
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/Pickaxe;->BLOODY:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->PICKAXE:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->unique:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->bones:Z

    const-string v1, "MINE"

    .line 5
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    .line 6
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/Pickaxe;->bloodStained:Z

    return-void
.end method


# virtual methods
.method public STRReq(I)I
    .locals 0

    const/16 p1, 0xe

    return p1
.end method

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
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->actions(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "MINE"

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V

    const-string v0, "MINE"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3
    sget p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    const/16 v0, 0xb

    const-string v1, "no_vein"

    const/4 v2, 0x0

    if-lt p2, v0, :cond_3

    const/16 v0, 0xf

    if-le p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    .line 4
    :goto_0
    sget-object v0, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v3, v0

    if-ge p2, v3, :cond_2

    .line 5
    iget v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget v0, v0, p2

    add-int/2addr v3, v0

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v0, v0, v3

    const/16 v4, 0xc

    if-ne v0, v4, :cond_1

    const/high16 p2, 0x40000000    # 2.0f

    .line 7
    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    .line 8
    iput-boolean v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    .line 9
    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/Pickaxe$1;

    invoke-direct {v0, p0, v3, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/Pickaxe$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/Pickaxe;ILcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    invoke-virtual {p2, v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack(ILcom/watabou/utils/Callback;)V

    return-void

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    .line 10
    invoke-static {p0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_1
    new-array p1, v2, [Ljava/lang/Object;

    .line 11
    invoke-static {p0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public glowing()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/Pickaxe;->bloodStained:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/Pickaxe;->BLOODY:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isIdentified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isUpgradable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public max(I)I
    .locals 0

    const/16 p1, 0xf

    return p1
.end method

.method public min(I)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/Pickaxe;->bloodStained:Z

    if-nez p1, :cond_0

    instance-of p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Bat;

    if-eqz p1, :cond_0

    iget p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    if-gt p1, p3, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/Pickaxe;->bloodStained:Z

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    :cond_0
    return p3
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "bloodStained"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/Pickaxe;->bloodStained:Z

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/Pickaxe;->bloodStained:Z

    const-string v1, "bloodStained"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    return-void
.end method

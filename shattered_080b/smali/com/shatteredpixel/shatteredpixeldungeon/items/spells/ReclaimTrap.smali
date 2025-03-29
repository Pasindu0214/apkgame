.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ReclaimTrap;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell;
.source "ReclaimTrap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ReclaimTrap$Recipe;
    }
.end annotation


# static fields
.field public static final COLORS:[Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;


# instance fields
.field public storedTrap:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    .line 1
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0xff0000

    .line 2
    invoke-direct {v1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    .line 3
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const v5, 0xff8000

    .line 4
    invoke-direct {v4, v5, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    aput-object v4, v0, v1

    const/4 v1, 0x2

    .line 5
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const v5, 0xffff00

    .line 6
    invoke-direct {v4, v5, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    aput-object v4, v0, v1

    const/4 v1, 0x3

    .line 7
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const v5, 0xff00

    .line 8
    invoke-direct {v4, v5, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    aput-object v4, v0, v1

    const/4 v1, 0x4

    .line 9
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const v5, 0xffff

    .line 10
    invoke-direct {v4, v5, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    aput-object v4, v0, v1

    const/4 v1, 0x5

    .line 11
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const v5, 0x8000ff

    .line 12
    invoke-direct {v4, v5, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    aput-object v4, v0, v1

    const/4 v1, 0x6

    .line 13
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const v5, 0xffffff

    .line 14
    invoke-direct {v4, v5, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    aput-object v4, v0, v1

    const/4 v1, 0x7

    .line 15
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const v5, 0x808080

    .line 16
    invoke-direct {v4, v5, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    aput-object v4, v0, v1

    const/16 v1, 0x8

    .line 17
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    .line 18
    invoke-direct {v4, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    aput-object v4, v0, v1

    .line 19
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ReclaimTrap;->COLORS:[Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/TargetedSpell;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->RECLAIM_TRAP:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ReclaimTrap;->storedTrap:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public affectTarget(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ReclaimTrap;->storedTrap:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    if-eqz p1, :cond_0

    .line 4
    iget-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->active:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->visible:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->disarm()V

    .line 6
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_lightning.mp3"

    .line 7
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 8
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRecharging;->charge(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ReclaimTrap;->storedTrap:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/Object;

    const-string v0, "no_trap"

    .line 10
    invoke-static {p0, v0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ReclaimTrap;->storedTrap:Ljava/lang/Class;

    .line 13
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    .line 14
    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->activate()V

    :goto_0
    return-void
.end method

.method public desc()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->desc()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ReclaimTrap;->storedTrap:Ljava/lang/Class;

    if-eqz v1, :cond_0

    const-string v1, "\n\n"

    .line 3
    invoke-static {v0, v1}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ReclaimTrap;->storedTrap:Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "name"

    invoke-static {v2, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 4
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ReclaimTrap;

    const-string v3, "desc_trap"

    invoke-static {v2, v3, v1, v0}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public doDrop(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ReclaimTrap;->storedTrap:Ljava/lang/Class;

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->doDrop(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    return-void
.end method

.method public glowing()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ReclaimTrap;->storedTrap:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ReclaimTrap;->COLORS:[Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->color:I

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onThrow(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ReclaimTrap;->storedTrap:Ljava/lang/Class;

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->onThrow(I)V

    return-void
.end method

.method public price()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    int-to-float v0, v0

    const v1, 0x423aaaab

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "stored_trap"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ReclaimTrap;->storedTrap:Ljava/lang/Class;

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ReclaimTrap;->storedTrap:Ljava/lang/Class;

    const-string v1, "stored_trap"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

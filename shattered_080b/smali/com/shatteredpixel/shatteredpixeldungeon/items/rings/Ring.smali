.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;
.source "Ring.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring$RingBuff;
    }
.end annotation


# static fields
.field public static final gems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;",
            ">;"
        }
    .end annotation
.end field

.field public static final rings:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public anonymous:Z

.field public buff:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

.field public gem:Ljava/lang/String;

.field public levelsToID:F


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 1
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfAccuracy;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfEvasion;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfElements;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfForce;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfFuror;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfHaste;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfEnergy;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfMight;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfSharpshooting;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfTenacity;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;

    aput-object v2, v0, v1

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->rings:[Ljava/lang/Class;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->gems:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->levelsToID:F

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->anonymous:Z

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->reset()V

    return-void
.end method

.method public static getBonus(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring$RingBuff;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs(Ljava/lang/Class;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring$RingBuff;

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring$RingBuff;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->soloBonus()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    return p1
.end method

.method public static getBuffedBonus(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring$RingBuff;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs(Ljava/lang/Class;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring$RingBuff;

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring$RingBuff;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->soloBuffedBonus()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    return p1
.end method


# virtual methods
.method public activate(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->buff()Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring$RingBuff;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->buff:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 2
    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->attachTo(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    return-void
.end method

.method public buff()Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring$RingBuff;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public doUnequip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;ZZ)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;->doUnequip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;ZZ)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->buff:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->buff:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->setKnown()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->levelsToID:F

    .line 3
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    return-object p0
.end method

.method public info()Ljava/lang/String;
    .locals 5

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->isKnown()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->desc()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "unknown_desc"

    invoke-static {p0, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2
    :goto_0
    iget-boolean v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    const-string v4, "\n\n"

    if-eqz v3, :cond_1

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3
    invoke-static {v1, v4}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "cursed_worn"

    invoke-static {v0, v3, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 4
    :cond_1
    iget-boolean v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    if-eqz v3, :cond_2

    .line 5
    invoke-static {v1, v4}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "curse_known"

    invoke-static {v0, v3, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->isIdentified()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    if-eqz v3, :cond_3

    .line 7
    invoke-static {v1, v4}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "not_cursed"

    invoke-static {v0, v3, v2, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 8
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->isKnown()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-static {v1, v4}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->statsInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method public isIdentified()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isIdentified()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->isKnown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isKnown()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->anonymous:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->known:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->isKnown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->gem:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public onHeroGainExp(FLcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->isIdentified()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->levelsToID:F

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->levelsToID:F

    const/4 p1, 0x0

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 4
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v0, "identify"

    invoke-static {p1, v0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateItemLevelAquired(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public price()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x25

    goto :goto_0

    :cond_0
    const/16 v0, 0x4b

    .line 2
    :goto_0
    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 3
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    if-lez v1, :cond_1

    add-int/2addr v1, v2

    mul-int v0, v0, v1

    goto :goto_1

    :cond_1
    if-gez v1, :cond_2

    rsub-int/lit8 v1, v1, 0x1

    .line 4
    div-int/2addr v0, v1

    :cond_2
    :goto_1
    if-ge v0, v2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v0

    :goto_2
    return v2
.end method

.method public random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 3

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x5

    .line 2
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level(I)V

    .line 4
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v0

    const v2, 0x3e99999a    # 0.3f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 5
    iput-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    :cond_2
    return-object p0
.end method

.method public reset()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->reset()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->levelsToID:F

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->contains(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->image(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    .line 6
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->itemLabels:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->gem:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "levels_to_ID"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->levelsToID:F

    const-string v0, "unfamiliarity"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x43480000    # 200.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->levelsToID:F

    :cond_0
    return-void
.end method

.method public setKnown()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->anonymous:Z

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->isKnown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;

    .line 4
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/ItemStatusHandler;->known:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->setSeen(Ljava/lang/Class;)V

    :cond_1
    return-void
.end method

.method public soloBonus()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    add-int/lit8 v1, v1, -0x2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 4
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public soloBuffedBonus()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public statsInfo()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;->levelsToID:F

    const-string v1, "levels_to_ID"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    return-void
.end method

.method public upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    :cond_0
    return-object p0
.end method

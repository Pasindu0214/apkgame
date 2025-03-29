.class public Lcom/shatteredpixel/shatteredpixeldungeon/Badges;
.super Ljava/lang/Object;
.source "Badges.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;
    }
.end annotation


# static fields
.field public static global:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;",
            ">;"
        }
    .end annotation
.end field

.field public static local:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;",
            ">;"
        }
    .end annotation
.end field

.field public static final removedBadges:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final renamedBadges:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static saveNeeded:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->saveNeeded:Z

    .line 3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->removedBadges:Ljava/util/HashSet;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "RARE_ALBINO"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "RARE_BANDIT"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "RARE_SHIELDED"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "RARE_SENIOR"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "RARE_ACIDIC"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "RARE"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-string v3, "TUTORIAL_WARRIOR"

    aput-object v3, v2, v0

    const/4 v0, 0x7

    const-string v3, "TUTORIAL_MAGE"

    aput-object v3, v2, v0

    .line 4
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->renamedBadges:Ljava/util/HashMap;

    const-string v1, "CHAMPION"

    const-string v2, "CHAMPION_1"

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addGlobal(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    .line 3
    sput-boolean p0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->saveNeeded:Z

    :cond_0
    return-void
.end method

.method public static displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V
    .locals 4

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 3
    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->meta:Z

    if-nez v1, :cond_3

    new-array v1, v2, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->desc()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, "endorsed"

    invoke-static {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_1
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    sput-boolean v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->saveNeeded:Z

    .line 7
    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->meta:Z

    if-eqz v1, :cond_2

    new-array v1, v2, [Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->desc()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "new_super"

    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-array v1, v2, [Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->desc()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "new"

    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :goto_0
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->showBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static filtered(Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    if-eqz p0, :cond_0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    if-nez p0, :cond_2

    .line 5
    iget-boolean v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->meta:Z

    if-nez v3, :cond_3

    :cond_2
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->image:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 6
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    const/4 p0, 0x4

    new-array v1, p0, [Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 7
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->MONSTERS_SLAIN_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->MONSTERS_SLAIN_2:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->MONSTERS_SLAIN_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->MONSTERS_SLAIN_4:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->leaveBest(Ljava/util/HashSet;[Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    new-array v1, p0, [Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 8
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->GOLD_COLLECTED_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->GOLD_COLLECTED_2:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v4

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->GOLD_COLLECTED_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v5

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->GOLD_COLLECTED_4:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->leaveBest(Ljava/util/HashSet;[Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    new-array v1, p0, [Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 9
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_2:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v4

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v5

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_4:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->leaveBest(Ljava/util/HashSet;[Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    new-array v1, p0, [Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 10
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->LEVEL_REACHED_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->LEVEL_REACHED_2:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v4

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->LEVEL_REACHED_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v5

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->LEVEL_REACHED_4:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->leaveBest(Ljava/util/HashSet;[Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    new-array v1, p0, [Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 11
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->STRENGTH_ATTAINED_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->STRENGTH_ATTAINED_2:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v4

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->STRENGTH_ATTAINED_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v5

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->STRENGTH_ATTAINED_4:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->leaveBest(Ljava/util/HashSet;[Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    new-array v1, p0, [Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 12
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->FOOD_EATEN_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->FOOD_EATEN_2:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v4

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->FOOD_EATEN_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v5

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->FOOD_EATEN_4:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->leaveBest(Ljava/util/HashSet;[Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    new-array v1, p0, [Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 13
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ITEM_LEVEL_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ITEM_LEVEL_2:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v4

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ITEM_LEVEL_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v5

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ITEM_LEVEL_4:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->leaveBest(Ljava/util/HashSet;[Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    new-array v1, p0, [Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 14
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->POTIONS_COOKED_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->POTIONS_COOKED_2:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v4

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->POTIONS_COOKED_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v5

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->POTIONS_COOKED_4:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->leaveBest(Ljava/util/HashSet;[Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    new-array v1, v5, [Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 15
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->DEATH_FROM_FIRE:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->YASD:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->leaveBest(Ljava/util/HashSet;[Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    new-array v1, v5, [Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 16
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->DEATH_FROM_GAS:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->YASD:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->leaveBest(Ljava/util/HashSet;[Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    new-array v1, v5, [Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 17
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->DEATH_FROM_HUNGER:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->YASD:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->leaveBest(Ljava/util/HashSet;[Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    new-array v1, v5, [Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 18
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->DEATH_FROM_POISON:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->YASD:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->leaveBest(Ljava/util/HashSet;[Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    new-array v1, v5, [Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 19
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->DEATH_FROM_GLYPH:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->YASD:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->leaveBest(Ljava/util/HashSet;[Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    new-array v1, v5, [Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 20
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->DEATH_FROM_FALLING:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->YASD:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->leaveBest(Ljava/util/HashSet;[Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    new-array v1, v5, [Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 21
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_WEAPONS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_ITEMS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->leaveBest(Ljava/util/HashSet;[Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    new-array v1, v5, [Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 22
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_ARMOR_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_ITEMS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->leaveBest(Ljava/util/HashSet;[Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    new-array v1, v5, [Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 23
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_WANDS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_ITEMS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->leaveBest(Ljava/util/HashSet;[Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    new-array v1, v5, [Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 24
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_RINGS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_ITEMS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->leaveBest(Ljava/util/HashSet;[Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    new-array v1, v5, [Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 25
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_ARTIFACTS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_ITEMS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->leaveBest(Ljava/util/HashSet;[Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    new-array v1, v5, [Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 26
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_POTIONS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_ITEMS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->leaveBest(Ljava/util/HashSet;[Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    new-array v1, v5, [Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 27
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_SCROLLS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_ITEMS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->leaveBest(Ljava/util/HashSet;[Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    new-array p0, p0, [Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 28
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->GAMES_PLAYED_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v1, p0, v3

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->GAMES_PLAYED_2:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v1, p0, v4

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->GAMES_PLAYED_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v1, p0, v5

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->GAMES_PLAYED_4:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v1, p0, v6

    invoke-static {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->leaveBest(Ljava/util/HashSet;[Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    new-array p0, v6, [Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 29
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->CHAMPION_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v1, p0, v3

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->CHAMPION_2:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v1, p0, v4

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->CHAMPION_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    aput-object v1, p0, v5

    invoke-static {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->leaveBest(Ljava/util/HashSet;[Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    .line 30
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object p0
.end method

.method public static isUnlocked(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static varargs leaveBest(Ljava/util/HashSet;[Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;",
            ">;[",
            "Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;",
            ")V"
        }
    .end annotation

    .line 1
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    .line 2
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 3
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static loadGlobal()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "badges.dat"

    .line 2
    invoke-static {v0}, Lcom/watabou/utils/FileUtils;->bundleFromFile(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->restore(Lcom/watabou/utils/Bundle;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    :cond_0
    :goto_0
    return-void
.end method

.method public static restore(Lcom/watabou/utils/Bundle;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/watabou/utils/Bundle;",
            ")",
            "Ljava/util/HashSet<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "badges"

    .line 2
    invoke-virtual {p0, v1}, Lcom/watabou/utils/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 4
    :try_start_0
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->renamedBadges:Ljava/util/HashMap;

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->renamedBadges:Ljava/util/HashMap;

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, p0, v1

    .line 6
    :cond_1
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->removedBadges:Ljava/util/HashSet;

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 8
    invoke-static {v2}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static saveGlobal()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->saveNeeded:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/watabou/utils/Bundle;

    invoke-direct {v0}, Lcom/watabou/utils/Bundle;-><init>()V

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->store(Lcom/watabou/utils/Bundle;Ljava/util/HashSet;)V

    :try_start_0
    const-string v1, "badges.dat"

    .line 4
    invoke-static {v1, v0}, Lcom/watabou/utils/FileUtils;->bundleToFile(Ljava/lang/String;Lcom/watabou/utils/Bundle;)V

    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->saveNeeded:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static store(Lcom/watabou/utils/Bundle;Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/watabou/utils/Bundle;",
            "Ljava/util/HashSet<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    add-int/lit8 v3, v1, 0x1

    .line 3
    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    const-string p1, "badges"

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static validateAllBagsBought(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/VelvetPouch;

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BAG_BOUGHT_SEED_POUCH:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/ScrollHolder;

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BAG_BOUGHT_SCROLL_HOLDER:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/PotionBandolier;

    if-eqz v0, :cond_2

    .line 6
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BAG_BOUGHT_POTION_BANDOLIER:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    goto :goto_0

    .line 7
    :cond_2
    instance-of p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/MagicalHolster;

    if-eqz p0, :cond_3

    .line 8
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BAG_BOUGHT_WAND_HOLSTER:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    .line 9
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_BAGS_BOUGHT:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BAG_BOUGHT_SEED_POUCH:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 11
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BAG_BOUGHT_SCROLL_HOLDER:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 12
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BAG_BOUGHT_POTION_BANDOLIER:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 13
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BAG_BOUGHT_WAND_HOLSTER:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 14
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 15
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_BAGS_BOUGHT:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 16
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    :cond_4
    return-void
.end method

.method public static validateBossSlain()V
    .locals 4

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_4:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_2:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    goto :goto_0

    .line 5
    :cond_3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    :goto_0
    if-eqz v0, :cond_b

    .line 6
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    .line 8
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_9

    .line 9
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_7

    if-eq v1, v2, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    goto :goto_1

    .line 10
    :cond_4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_1_HUNTRESS:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    goto :goto_1

    .line 11
    :cond_5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_1_ROGUE:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    goto :goto_1

    .line 12
    :cond_6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_1_MAGE:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    goto :goto_1

    .line 13
    :cond_7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_1_WARRIOR:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 14
    :goto_1
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 16
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    sput-boolean v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->saveNeeded:Z

    .line 18
    :cond_8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_1_WARRIOR:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_1_MAGE:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_1_ROGUE:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_1_HUNTRESS:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 22
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_1_ALL_CLASSES:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 23
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 24
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    .line 25
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    sput-boolean v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->saveNeeded:Z

    goto/16 :goto_3

    .line 27
    :cond_9
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    if-ne v0, v1, :cond_b

    .line 28
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return-void

    .line 29
    :pswitch_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_3_WARDEN:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    goto :goto_2

    .line 30
    :pswitch_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_3_SNIPER:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    goto :goto_2

    .line 31
    :pswitch_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_3_ASSASSIN:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    goto :goto_2

    .line 32
    :pswitch_3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_3_FREERUNNER:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    goto :goto_2

    .line 33
    :pswitch_4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_3_BATTLEMAGE:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    goto :goto_2

    .line 34
    :pswitch_5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_3_WARLOCK:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    goto :goto_2

    .line 35
    :pswitch_6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_3_BERSERKER:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    goto :goto_2

    .line 36
    :pswitch_7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_3_GLADIATOR:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 37
    :goto_2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 39
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    sput-boolean v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->saveNeeded:Z

    .line 41
    :cond_a
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_3_GLADIATOR:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_3_BERSERKER:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_3_WARLOCK:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_3_BATTLEMAGE:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_3_FREERUNNER:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_3_ASSASSIN:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_3_SNIPER:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_3_WARDEN:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 49
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->BOSS_SLAIN_3_ALL_SUBCLASSES:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 50
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 51
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    .line 52
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    sput-boolean v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->saveNeeded:Z

    :cond_b
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static validateChampion(I)V
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->CHAMPION_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-lt p0, v1, :cond_1

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->CHAMPION_2:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    :cond_1
    const/4 v1, 0x6

    if-lt p0, v1, :cond_2

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->CHAMPION_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 4
    :cond_2
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    return-void
.end method

.method public static validateDeathFromFalling()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->DEATH_FROM_FALLING:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateYASD()V

    return-void
.end method

.method public static validateDeathFromFire()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->DEATH_FROM_FIRE:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateYASD()V

    return-void
.end method

.method public static validateDeathFromGas()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->DEATH_FROM_GAS:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateYASD()V

    return-void
.end method

.method public static validateDeathFromGlyph()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->DEATH_FROM_GLYPH:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateYASD()V

    return-void
.end method

.method public static validateDeathFromHunger()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->DEATH_FROM_HUNGER:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateYASD()V

    return-void
.end method

.method public static validateDeathFromPoison()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->DEATH_FROM_POISON:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateYASD()V

    return-void
.end method

.method public static validateFoodEaten()V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->FOOD_EATEN_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->foodEaten:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->FOOD_EATEN_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->FOOD_EATEN_2:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->foodEaten:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_1

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->FOOD_EATEN_2:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 6
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->FOOD_EATEN_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->foodEaten:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_2

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->FOOD_EATEN_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 9
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->FOOD_EATEN_4:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->foodEaten:I

    const/16 v2, 0x28

    if-lt v1, v2, :cond_3

    .line 11
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->FOOD_EATEN_4:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 12
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_3
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    return-void
.end method

.method public static validateHappyEnd()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->HAPPY_END:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    return-void
.end method

.method public static validateHuntressUnlock()V
    .locals 2

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->thrownAssists:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->UNLOCK_HUNTRESS:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->UNLOCK_HUNTRESS:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    :cond_0
    return-void
.end method

.method public static validateItemLevelAquired(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    if-eqz v0, :cond_5

    instance-of v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ITEM_LEVEL_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ITEM_LEVEL_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 4
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ITEM_LEVEL_2:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_2

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ITEM_LEVEL_2:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 7
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ITEM_LEVEL_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level()I

    move-result v1

    const/16 v2, 0x9

    if-lt v1, v2, :cond_3

    .line 9
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ITEM_LEVEL_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 10
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ITEM_LEVEL_4:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level()I

    move-result p0

    const/16 v1, 0xc

    if-lt p0, v1, :cond_4

    .line 12
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ITEM_LEVEL_4:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 13
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_4
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static validateItemsIdentified()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->values()[Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->items()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 3
    iget-object v7, v4, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->seen:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_2

    .line 4
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->catalogBadges:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 5
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 6
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_ITEMS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_WEAPONS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_ARMOR_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_WANDS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_RINGS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_ARTIFACTS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_POTIONS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_SCROLLS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->ALL_ITEMS_IDENTIFIED:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    :cond_4
    return-void
.end method

.method public static validateMastery()V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->MASTERY_HUNTRESS:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->MASTERY_ROGUE:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->MASTERY_MAGE:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    goto :goto_0

    .line 5
    :cond_3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->MASTERY_WARRIOR:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 6
    :goto_0
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 7
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    sput-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->saveNeeded:Z

    :cond_4
    return-void
.end method

.method public static validateMonstersSlain()V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->MONSTERS_SLAIN_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->enemiesSlain:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->MONSTERS_SLAIN_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->MONSTERS_SLAIN_2:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->enemiesSlain:I

    const/16 v2, 0x32

    if-lt v1, v2, :cond_1

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->MONSTERS_SLAIN_2:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 6
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->MONSTERS_SLAIN_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->enemiesSlain:I

    const/16 v2, 0x96

    if-lt v1, v2, :cond_2

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->MONSTERS_SLAIN_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 9
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->MONSTERS_SLAIN_4:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->enemiesSlain:I

    const/16 v2, 0xfa

    if-lt v1, v2, :cond_3

    .line 11
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->MONSTERS_SLAIN_4:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 12
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_3
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    return-void
.end method

.method public static validateRogueUnlock()V
    .locals 2

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->sneakAttacks:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->UNLOCK_ROGUE:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->UNLOCK_ROGUE:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    :cond_0
    return-void
.end method

.method public static validateStrengthAttained()V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->STRENGTH_ATTAINED_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->STRENGTH_ATTAINED_1:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->STRENGTH_ATTAINED_2:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_1

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->STRENGTH_ATTAINED_2:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 6
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->STRENGTH_ATTAINED_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->STRENGTH_ATTAINED_3:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 9
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->STRENGTH_ATTAINED_4:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_3

    .line 11
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->STRENGTH_ATTAINED_4:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 12
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_3
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    return-void
.end method

.method public static validateVictory()V
    .locals 4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->VICTORY:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 2
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->VICTORY_HUNTRESS:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->VICTORY_ROGUE:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    goto :goto_0

    .line 6
    :cond_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->VICTORY_MAGE:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    goto :goto_0

    .line 7
    :cond_3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->VICTORY_WARRIOR:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 8
    :goto_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 10
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    sput-boolean v2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->saveNeeded:Z

    .line 12
    :cond_4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->VICTORY_WARRIOR:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->VICTORY_MAGE:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->VICTORY_ROGUE:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->VICTORY_HUNTRESS:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->VICTORY_ALL_CLASSES:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 17
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    :cond_5
    return-void
.end method

.method public static validateYASD()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->DEATH_FROM_FIRE:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->DEATH_FROM_POISON:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->DEATH_FROM_GAS:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->DEATH_FROM_HUNGER:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->DEATH_FROM_GLYPH:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->global:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->DEATH_FROM_FALLING:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->YASD:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 8
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->local:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->displayBadge(Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V

    :cond_0
    return-void
.end method

.class public Lcom/shatteredpixel/shatteredpixeldungeon/Bones;
.super Ljava/lang/Object;
.source "Bones.java"


# static fields
.field public static depth:I = -0x1

.field public static item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;


# direct methods
.method public static get()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 4

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->depth:I

    const-string v1, "bones.dat"

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 2
    :try_start_0
    invoke-static {v1}, Lcom/watabou/utils/FileUtils;->bundleFromFile(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v0

    const-string v1, "level"

    .line 3
    invoke-virtual {v0, v1}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->depth:I

    const-string v1, "item"

    .line 4
    invoke-virtual {v0, v1}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object v0

    .line 5
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 6
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->get()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v2

    .line 7
    :cond_0
    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    if-ne v0, v3, :cond_8

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->challenges:I

    if-nez v0, :cond_8

    .line 8
    invoke-static {v1}, Lcom/watabou/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 9
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->depth:I

    .line 10
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    if-nez v0, :cond_1

    return-object v2

    .line 11
    :cond_1
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 12
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->removeArtifact(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    if-nez v0, :cond_2

    .line 14
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->price()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;-><init>(I)V

    return-object v0

    .line 15
    :cond_2
    iput-boolean v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 16
    iput-boolean v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    return-object v0

    .line 17
    :cond_3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->price()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;-><init>(I)V

    return-object v0

    .line 18
    :cond_4
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isUpgradable()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    if-nez v1, :cond_5

    .line 19
    iput-boolean v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    .line 20
    iput-boolean v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    .line 21
    :cond_5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isUpgradable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 22
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_6

    .line 23
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->degrade(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 24
    :cond_6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    iput-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    .line 25
    :cond_7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->reset()V

    .line 26
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    return-object v0

    :cond_8
    return-object v2
.end method

.method public static pickItem(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 6

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    const/4 v1, 0x6

    .line 2
    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    if-eq v1, v3, :cond_6

    if-eq v1, v2, :cond_5

    if-eq v1, v0, :cond_4

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->quickslot:Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;

    if-eqz v1, :cond_3

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 5
    iget-object v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->slots:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    aget-object v4, v4, v3

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->isPlaceholder(I)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 7
    iget-object v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/QuickSlot;->slots:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    aget-object v4, v4, v3

    .line 8
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {v2}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_1

    .line 10
    :cond_3
    throw v4

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->misc2:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    goto :goto_1

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->misc1:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    goto :goto_1

    .line 13
    :cond_6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    goto :goto_1

    .line 14
    :cond_7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    :goto_1
    if-eqz v4, :cond_8

    .line 15
    iget-boolean v0, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->bones:Z

    if-nez v0, :cond_e

    .line 16
    :cond_8
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->pickItem(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p0

    return-object p0

    .line 17
    :cond_9
    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    :cond_a
    :goto_2
    move-object v4, p0

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$ItemIterator;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$ItemIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 20
    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$ItemIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 21
    iget-boolean v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->bones:Z

    if-eqz v5, :cond_a

    .line 22
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 23
    :cond_b
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result p0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_c

    .line 24
    invoke-static {v1}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 25
    iget-boolean p0, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->stackable:Z

    if-eqz p0, :cond_e

    .line 26
    iget p0, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    add-int/2addr p0, v3

    .line 27
    div-int/2addr p0, v2

    invoke-static {v3, p0}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result p0

    invoke-virtual {v4, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_3

    .line 28
    :cond_c
    sget p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->gold:I

    const/16 v0, 0x64

    const/16 v1, 0x32

    if-le p0, v0, :cond_d

    .line 29
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;

    sget p0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->gold:I

    div-int/2addr p0, v2

    invoke-static {v1, p0}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result p0

    invoke-direct {v4, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;-><init>(I)V

    goto :goto_3

    .line 30
    :cond_d
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;

    invoke-direct {v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;-><init>(I)V

    :cond_e
    :goto_3
    return-object v4
.end method

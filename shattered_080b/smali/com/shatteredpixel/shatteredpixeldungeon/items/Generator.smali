.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;
.super Ljava/lang/Object;
.source "Generator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;
    }
.end annotation


# static fields
.field public static categoryProbs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final floorSetTierProbs:[[F

.field public static final misTiers:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

.field public static spawnedArtifacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final wepTiers:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x5

    new-array v1, v0, [[F

    new-array v2, v0, [F

    .line 1
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [F

    fill-array-data v2, :array_2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-array v2, v0, [F

    fill-array-data v2, :array_3

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-array v2, v0, [F

    fill-array-data v2, :array_4

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->floorSetTierProbs:[[F

    .line 2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->categoryProbs:Ljava/util/HashMap;

    new-array v1, v0, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 3
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WEP_T1:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v2, v1, v3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WEP_T2:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v2, v1, v4

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WEP_T3:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v2, v1, v5

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WEP_T4:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v2, v1, v6

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->WEP_T5:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v2, v1, v7

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->wepTiers:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    new-array v0, v0, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 4
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->MIS_T1:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v1, v0, v3

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->MIS_T2:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v1, v0, v4

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->MIS_T3:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v1, v0, v5

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->MIS_T4:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v1, v0, v6

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->MIS_T5:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    aput-object v1, v0, v7

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->misTiers:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->spawnedArtifacts:Ljava/util/ArrayList;

    return-void

    :array_0
    .array-data 4
        0x0
        0x428c0000    # 70.0f
        0x41a00000    # 20.0f
        0x41000000    # 8.0f
        0x40000000    # 2.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x41c80000    # 25.0f
        0x42480000    # 50.0f
        0x41a00000    # 20.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x42200000    # 40.0f
        0x42480000    # 50.0f
        0x41200000    # 10.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x41a00000    # 20.0f
        0x42200000    # 40.0f
        0x42200000    # 40.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        0x41a00000    # 20.0f
        0x42a00000    # 80.0f
    .end array-data
.end method

.method public static random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->categoryProbs:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/watabou/utils/Random;->chances(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->reset()V

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->categoryProbs:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/watabou/utils/Random;->chances(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 4
    :cond_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->categoryProbs:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    return-object v0
.end method

.method public static random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 2

    .line 6
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0xf

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    invoke-static {p0}, Lcom/watabou/utils/Random;->chances([F)I

    move-result p0

    aget-object p0, v0, p0

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->randomMissile()Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->randomArmor()Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    move-result-object p0

    return-object p0

    .line 10
    :cond_2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->randomArtifact()Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    move-result-object p0

    if-eqz p0, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->RING:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->random(Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p0

    :goto_0
    return-object p0

    .line 12
    :cond_4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->randomWeapon()Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    move-result-object p0

    return-object p0
.end method

.method public static random(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;)",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;"
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p0

    return-object p0
.end method

.method public static randomArmor()Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;
    .locals 1

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    div-int/lit8 v0, v0, 0x5

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->randomArmor(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    move-result-object v0

    return-object v0
.end method

.method public static randomArmor(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;
    .locals 2

    int-to-float p0, p0

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->floorSetTierProbs:[[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result p0

    float-to-int p0, p0

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->ARMOR:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->floorSetTierProbs:[[F

    aget-object p0, v1, p0

    invoke-static {p0}, Lcom/watabou/utils/Random;->chances([F)I

    move-result p0

    aget-object p0, v0, p0

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    return-object p0
.end method

.method public static randomArtifact()Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;
    .locals 4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->ARTIFACT:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 2
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    invoke-static {v1}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return-object v2

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    aget-object v0, v0, v1

    .line 4
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->removeArtifact(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    .line 6
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    return-object v0

    :cond_1
    return-object v2
.end method

.method public static randomMissile()Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;
    .locals 3

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    div-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->floorSetTierProbs:[[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result v0

    float-to-int v0, v0

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->misTiers:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->floorSetTierProbs:[[F

    aget-object v0, v2, v0

    invoke-static {v0}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v0

    aget-object v0, v1, v0

    .line 4
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    invoke-static {v0}, Lcom/watabou/utils/Random;->chances([F)I

    move-result v0

    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    .line 5
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    return-object v0
.end method

.method public static randomWeapon()Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;
    .locals 1

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    div-int/lit8 v0, v0, 0x5

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->randomWeapon(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    move-result-object v0

    return-object v0
.end method

.method public static randomWeapon(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;
    .locals 2

    int-to-float p0, p0

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->floorSetTierProbs:[[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result p0

    float-to-int p0, p0

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->wepTiers:[Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->floorSetTierProbs:[[F

    aget-object p0, v1, p0

    invoke-static {p0}, Lcom/watabou/utils/Random;->chances([F)I

    move-result p0

    aget-object p0, v0, p0

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    invoke-static {p0}, Lcom/watabou/utils/Random;->chances([F)I

    move-result p0

    aget-object p0, v0, p0

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->random()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    return-object p0
.end method

.method public static removeArtifact(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->spawnedArtifacts:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->ARTIFACT:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 4
    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    aget v3, v0, v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 6
    aput v1, v0, v2

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->spawnedArtifacts:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static reset()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->values()[Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->categoryProbs:Ljava/util/HashMap;

    iget v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->prob:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 7

    const-string v0, "general_probs"

    .line 1
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    invoke-virtual {v1, v0}, Lb/a/c;->e(Ljava/lang/String;)Lb/a/a;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lb/a/a;->a()I

    move-result v1

    .line 4
    new-array v3, v1, [F
    :try_end_0
    .catch Lb/a/b; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    const-wide/16 v5, 0x0

    .line 5
    :try_start_1
    invoke-virtual {v0, v4}, Lb/a/a;->b(I)D

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    double-to-float v5, v5

    .line 6
    :try_start_2
    aput v5, v3, v4
    :try_end_2
    .catch Lb/a/b; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 7
    invoke-static {v0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_1
    array-length v1, v3

    if-ge v0, v1, :cond_2

    .line 9
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->categoryProbs:Ljava/util/HashMap;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->values()[Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    move-result-object v4

    aget-object v4, v4, v0

    aget v5, v3, v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->reset()V

    .line 11
    :cond_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->ARTIFACT:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    .line 12
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->INITIAL_ARTIFACT_PROBS:[F

    .line 13
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->probs:[F

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->spawnedArtifacts:Ljava/util/ArrayList;

    const-string v0, "spawned_artifacts"

    .line 15
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getClassArray(Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object p0

    array-length v0, p0

    :goto_2
    if-ge v2, v0, :cond_3

    aget-object v1, p0, v2

    .line 16
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->removeArtifact(Ljava/lang/Class;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->categoryProbs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Float;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Float;

    .line 2
    array-length v2, v0

    new-array v3, v2, [F

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 3
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "general_probs"

    if-eqz p0, :cond_2

    .line 4
    :try_start_0
    new-instance v4, Lb/a/a;

    invoke-direct {v4}, Lb/a/a;-><init>()V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_1

    .line 5
    aget v6, v3, v5

    float-to-double v6, v6

    .line 6
    new-instance v8, Ljava/lang/Double;

    invoke-direct {v8, v6, v7}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v4, v5, v8}, Lb/a/a;->a(ILjava/lang/Object;)Lb/a/a;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    invoke-virtual {v2, v0, v4}, Lb/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/a/c;
    :try_end_0
    .catch Lb/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 8
    invoke-static {v0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    .line 9
    :goto_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->spawnedArtifacts:Ljava/util/ArrayList;

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    const-string v1, "spawned_artifacts"

    invoke-virtual {p0, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;[Ljava/lang/Class;)V

    return-void

    :cond_2
    const/4 p0, 0x0

    .line 10
    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

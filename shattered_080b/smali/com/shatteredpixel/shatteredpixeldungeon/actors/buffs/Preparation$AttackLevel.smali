.class public final enum Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;
.super Ljava/lang/Enum;
.source "Preparation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttackLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

.field public static final enum LVL_1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

.field public static final enum LVL_2:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

.field public static final enum LVL_3:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

.field public static final enum LVL_4:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

.field public static final enum LVL_5:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;


# instance fields
.field public final baseDmgBonus:F

.field public final blinkDistance:I

.field public final damageRolls:I

.field public final missingHPBonus:F

.field public final turnsReq:I


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    const-string v1, "LVL_1"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x3dcccccd    # 0.1f

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;-><init>(Ljava/lang/String;IIFFII)V

    sput-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->LVL_1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    const-string v10, "LVL_2"

    const/4 v11, 0x1

    const/4 v12, 0x3

    const v13, 0x3e4ccccd    # 0.2f

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;-><init>(Ljava/lang/String;IIFFII)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->LVL_2:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    const-string v2, "LVL_3"

    const/4 v3, 0x2

    const/4 v4, 0x6

    const v5, 0x3e99999a    # 0.3f

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;-><init>(Ljava/lang/String;IIFFII)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->LVL_3:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    .line 4
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    const-string v10, "LVL_4"

    const/4 v11, 0x3

    const/16 v12, 0xb

    const v13, 0x3ecccccd    # 0.4f

    const v14, 0x3f19999a    # 0.6f

    const/4 v15, 0x2

    const/16 v16, 0x5

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;-><init>(Ljava/lang/String;IIFFII)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->LVL_4:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    .line 5
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    const-string v2, "LVL_5"

    const/4 v3, 0x4

    const/16 v4, 0x10

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x3

    const/4 v8, 0x7

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;-><init>(Ljava/lang/String;IIFFII)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->LVL_5:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    .line 6
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->LVL_1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->LVL_2:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->LVL_3:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->LVL_4:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIFFII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFFII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->turnsReq:I

    .line 3
    iput p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->baseDmgBonus:F

    iput p5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->missingHPBonus:F

    .line 4
    iput p6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->damageRolls:I

    iput p7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->blinkDistance:I

    return-void
.end method

.method public static getLvl(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;
    .locals 3

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->values()[Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    .line 4
    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->turnsReq:I

    if-lt p0, v2, :cond_0

    return-object v1

    .line 5
    :cond_1
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->LVL_1:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    return-object p0
.end method

.method public static values()[Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    invoke-virtual {v0}, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    return-object v0
.end method


# virtual methods
.method public canInstakill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->LVL_5:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    if-ne p0, v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties()Ljava/util/HashSet;

    move-result-object v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->MINIBOSS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties()Ljava/util/HashSet;

    move-result-object p1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->BOSS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public damageRoll(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damageRoll()I

    move-result v0

    const/4 v1, 0x1

    .line 2
    :goto_0
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->damageRolls:I

    if-ge v1, v2, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damageRoll()I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    int-to-float p1, p1

    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float p1, p2, p1

    int-to-float v0, v0

    .line 5
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->baseDmgBonus:F

    add-float/2addr v1, p2

    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->missingHPBonus:F

    mul-float p2, p2, p1

    add-float/2addr p2, v1

    mul-float p2, p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.class public final enum Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;
.super Ljava/lang/Enum;
.source "Armor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Augment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

.field public static final enum DEFENSE:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

.field public static final enum EVASION:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

.field public static final enum NONE:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;


# instance fields
.field public defenceFactor:F

.field public evasionFactor:F


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    const/4 v1, 0x0

    const-string v2, "EVASION"

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x40800000    # -1.0f

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;->EVASION:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    const/4 v2, 0x1

    const-string v3, "DEFENSE"

    const/high16 v4, -0x40000000    # -2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;->DEFENSE:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "NONE"

    invoke-direct {v0, v5, v4, v3, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;->NONE:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    .line 4
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;->EVASION:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    aput-object v5, v3, v1

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;->DEFENSE:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    aput-object v1, v3, v2

    aput-object v0, v3, v4

    sput-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;->evasionFactor:F

    .line 3
    iput p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;->defenceFactor:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    return-object p0
.end method

.method public static values()[Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    invoke-virtual {v0}, [Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Augment;

    return-object v0
.end method

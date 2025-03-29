.class public final enum Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;
.super Ljava/lang/Enum;
.source "Combo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "finisherType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

.field public static final enum CLEAVE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

.field public static final enum CLOBBER:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

.field public static final enum CRUSH:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

.field public static final enum FURY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

.field public static final enum SLAM:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    const/4 v1, 0x0

    const-string v2, "CLOBBER"

    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;->CLOBBER:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    const/4 v2, 0x1

    const-string v3, "CLEAVE"

    invoke-direct {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;->CLEAVE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    const/4 v3, 0x2

    const-string v4, "SLAM"

    invoke-direct {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;->SLAM:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    const/4 v4, 0x3

    const-string v5, "CRUSH"

    invoke-direct {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;->CRUSH:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    const/4 v5, 0x4

    const-string v6, "FURY"

    invoke-direct {v0, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;->FURY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    .line 2
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;->CLOBBER:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;->CLEAVE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;->SLAM:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;->CRUSH:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    return-object p0
.end method

.method public static values()[Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    invoke-virtual {v0}, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$finisherType;

    return-object v0
.end method

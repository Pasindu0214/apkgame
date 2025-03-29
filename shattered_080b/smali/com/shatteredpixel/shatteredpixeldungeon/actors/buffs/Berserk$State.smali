.class public final enum Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;
.super Ljava/lang/Enum;
.source "Berserk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

.field public static final enum BERSERK:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

.field public static final enum NORMAL:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

.field public static final enum RECOVERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;->NORMAL:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    const/4 v2, 0x1

    const-string v3, "BERSERK"

    invoke-direct {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;->BERSERK:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    const/4 v3, 0x2

    const-string v4, "RECOVERING"

    invoke-direct {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;->RECOVERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    .line 2
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;->NORMAL:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    aput-object v5, v4, v1

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;->BERSERK:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    return-object p0
.end method

.method public static values()[Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    invoke-virtual {v0}, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Berserk$State;

    return-object v0
.end method

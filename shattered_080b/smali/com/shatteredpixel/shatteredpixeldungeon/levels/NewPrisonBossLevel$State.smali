.class public final enum Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;
.super Ljava/lang/Enum;
.source "NewPrisonBossLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

.field public static final enum FIGHT_ARENA:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

.field public static final enum FIGHT_START:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

.field public static final enum START:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

.field public static final enum TRAP_MAZES:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

.field public static final enum WON:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    const/4 v1, 0x0

    const-string v2, "START"

    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;->START:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    const/4 v2, 0x1

    const-string v3, "FIGHT_START"

    invoke-direct {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;->FIGHT_START:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    const/4 v3, 0x2

    const-string v4, "TRAP_MAZES"

    invoke-direct {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;->TRAP_MAZES:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    .line 4
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    const/4 v4, 0x3

    const-string v5, "FIGHT_ARENA"

    invoke-direct {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;->FIGHT_ARENA:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    .line 5
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    const/4 v5, 0x4

    const-string v6, "WON"

    invoke-direct {v0, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;->WON:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    .line 6
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;->START:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    aput-object v7, v6, v1

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;->FIGHT_START:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    aput-object v1, v6, v2

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;->TRAP_MAZES:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    aput-object v1, v6, v3

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;->FIGHT_ARENA:Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    return-object p0
.end method

.method public static values()[Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    invoke-virtual {v0}, [Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$State;

    return-object v0
.end method

.class public final enum Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;
.super Ljava/lang/Enum;
.source "InterlevelScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

.field public static final enum ASCEND:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

.field public static final enum CONTINUE:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

.field public static final enum DESCEND:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

.field public static final enum FALL:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

.field public static final enum NONE:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

.field public static final enum RESET:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

.field public static final enum RESURRECT:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

.field public static final enum RETURN:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    const/4 v1, 0x0

    const-string v2, "DESCEND"

    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->DESCEND:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    const/4 v2, 0x1

    const-string v3, "ASCEND"

    invoke-direct {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->ASCEND:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    const/4 v3, 0x2

    const-string v4, "CONTINUE"

    invoke-direct {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->CONTINUE:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    const/4 v4, 0x3

    const-string v5, "RESURRECT"

    invoke-direct {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->RESURRECT:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    const/4 v5, 0x4

    const-string v6, "RETURN"

    invoke-direct {v0, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->RETURN:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    const/4 v6, 0x5

    const-string v7, "FALL"

    invoke-direct {v0, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->FALL:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    const/4 v7, 0x6

    const-string v8, "RESET"

    invoke-direct {v0, v8, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->RESET:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    const/4 v8, 0x7

    const-string v9, "NONE"

    invoke-direct {v0, v9, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->NONE:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    .line 2
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->DESCEND:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    aput-object v10, v9, v1

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->ASCEND:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    aput-object v1, v9, v2

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->CONTINUE:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    aput-object v1, v9, v3

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->RESURRECT:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    aput-object v1, v9, v4

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->RETURN:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    aput-object v1, v9, v5

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->FALL:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    aput-object v1, v9, v6

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->RESET:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    return-object p0
.end method

.method public static values()[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    invoke-virtual {v0}, [Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    return-object v0
.end method

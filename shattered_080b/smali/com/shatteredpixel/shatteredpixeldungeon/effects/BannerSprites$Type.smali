.class public final enum Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;
.super Ljava/lang/Enum;
.source "BannerSprites.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

.field public static final enum BOSS_SLAIN:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

.field public static final enum GAME_OVER:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

.field public static final enum PIXEL_DUNGEON:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

.field public static final enum PIXEL_DUNGEON_SIGNS:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

.field public static final enum SELECT_YOUR_HERO:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

    const/4 v1, 0x0

    const-string v2, "PIXEL_DUNGEON"

    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;->PIXEL_DUNGEON:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

    const/4 v2, 0x1

    const-string v3, "BOSS_SLAIN"

    invoke-direct {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;->BOSS_SLAIN:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

    const/4 v3, 0x2

    const-string v4, "GAME_OVER"

    invoke-direct {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;->GAME_OVER:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

    .line 4
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

    const/4 v4, 0x3

    const-string v5, "SELECT_YOUR_HERO"

    invoke-direct {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;->SELECT_YOUR_HERO:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

    .line 5
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

    const/4 v5, 0x4

    const-string v6, "PIXEL_DUNGEON_SIGNS"

    invoke-direct {v0, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;->PIXEL_DUNGEON_SIGNS:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

    .line 6
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;->PIXEL_DUNGEON:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

    aput-object v7, v6, v1

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;->BOSS_SLAIN:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

    aput-object v1, v6, v2

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;->GAME_OVER:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

    aput-object v1, v6, v3

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;->SELECT_YOUR_HERO:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

    return-object p0
.end method

.method public static values()[Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

    invoke-virtual {v0}, [Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/effects/BannerSprites$Type;

    return-object v0
.end method

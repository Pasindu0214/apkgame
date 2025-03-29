.class public final enum Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;
.super Ljava/lang/Enum;
.source "CharSprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

.field public static final enum BURNING:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

.field public static final enum CHILLED:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

.field public static final enum DARKENED:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

.field public static final enum FROZEN:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

.field public static final enum HEALING:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

.field public static final enum ILLUMINATED:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

.field public static final enum INVISIBLE:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

.field public static final enum LEVITATING:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

.field public static final enum MARKED:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

.field public static final enum PARALYSED:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

.field public static final enum SHIELDED:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    const/4 v1, 0x0

    const-string v2, "BURNING"

    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->BURNING:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    const/4 v2, 0x1

    const-string v3, "LEVITATING"

    invoke-direct {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->LEVITATING:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    const/4 v3, 0x2

    const-string v4, "INVISIBLE"

    invoke-direct {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->INVISIBLE:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    const/4 v4, 0x3

    const-string v5, "PARALYSED"

    invoke-direct {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->PARALYSED:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    const/4 v5, 0x4

    const-string v6, "FROZEN"

    invoke-direct {v0, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->FROZEN:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    const/4 v6, 0x5

    const-string v7, "ILLUMINATED"

    invoke-direct {v0, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->ILLUMINATED:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    const/4 v7, 0x6

    const-string v8, "CHILLED"

    invoke-direct {v0, v8, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->CHILLED:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    const/4 v8, 0x7

    const-string v9, "DARKENED"

    invoke-direct {v0, v9, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->DARKENED:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    const/16 v9, 0x8

    const-string v10, "MARKED"

    invoke-direct {v0, v10, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->MARKED:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    const/16 v10, 0x9

    const-string v11, "HEALING"

    invoke-direct {v0, v11, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->HEALING:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    const/16 v11, 0xa

    const-string v12, "SHIELDED"

    invoke-direct {v0, v12, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->SHIELDED:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    const/16 v12, 0xb

    new-array v12, v12, [Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    .line 2
    sget-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->BURNING:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    aput-object v13, v12, v1

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->LEVITATING:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    aput-object v1, v12, v2

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->INVISIBLE:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    aput-object v1, v12, v3

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->PARALYSED:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    aput-object v1, v12, v4

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->FROZEN:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    aput-object v1, v12, v5

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->ILLUMINATED:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    aput-object v1, v12, v6

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->CHILLED:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    aput-object v1, v12, v7

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->DARKENED:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    aput-object v1, v12, v8

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->MARKED:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    aput-object v1, v12, v9

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->HEALING:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    aput-object v1, v12, v10

    aput-object v0, v12, v11

    sput-object v12, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    return-object p0
.end method

.method public static values()[Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    invoke-virtual {v0}, [Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    return-object v0
.end method

.class public final enum Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;
.super Ljava/lang/Enum;
.source "Banner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;

.field public static final enum FADE_IN:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;

.field public static final enum FADE_OUT:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;

.field public static final enum STATIC:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;

    const/4 v1, 0x0

    const-string v2, "FADE_IN"

    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;->FADE_IN:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;

    const/4 v2, 0x1

    const-string v3, "STATIC"

    invoke-direct {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;->STATIC:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;

    const/4 v3, 0x2

    const-string v4, "FADE_OUT"

    invoke-direct {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;->FADE_OUT:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;

    .line 2
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;->FADE_IN:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;

    aput-object v5, v4, v1

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;->STATIC:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;

    return-object p0
.end method

.method public static values()[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;

    invoke-virtual {v0}, [Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/ui/Banner$State;

    return-object v0
.end method

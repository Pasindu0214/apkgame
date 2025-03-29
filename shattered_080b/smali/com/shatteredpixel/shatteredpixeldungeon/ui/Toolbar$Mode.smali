.class public final enum Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;
.super Ljava/lang/Enum;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;

.field public static final enum CENTER:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;

.field public static final enum GROUP:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;

.field public static final enum SPLIT:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;

    const/4 v1, 0x0

    const-string v2, "SPLIT"

    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;->SPLIT:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;

    const/4 v2, 0x1

    const-string v3, "GROUP"

    invoke-direct {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;->GROUP:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;

    const/4 v3, 0x2

    const-string v4, "CENTER"

    invoke-direct {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;->CENTER:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;

    .line 4
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;->SPLIT:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;

    aput-object v5, v4, v1

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;->GROUP:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;

    return-object p0
.end method

.method public static values()[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;

    invoke-virtual {v0}, [Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;

    return-object v0
.end method

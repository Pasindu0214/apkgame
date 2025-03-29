.class public final enum Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;
.super Ljava/lang/Enum;
.source "Languages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

.field public static final enum INCOMPLETE:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

.field public static final enum REVIEWED:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

.field public static final enum UNREVIEWED:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    const/4 v1, 0x0

    const-string v2, "INCOMPLETE"

    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;->INCOMPLETE:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    const/4 v2, 0x1

    const-string v3, "UNREVIEWED"

    invoke-direct {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;->UNREVIEWED:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    const/4 v3, 0x2

    const-string v4, "REVIEWED"

    invoke-direct {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;->REVIEWED:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    .line 4
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;->INCOMPLETE:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    aput-object v5, v4, v1

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;->UNREVIEWED:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    return-object p0
.end method

.method public static values()[Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;->$VALUES:[Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    invoke-virtual {v0}, [Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    return-object v0
.end method

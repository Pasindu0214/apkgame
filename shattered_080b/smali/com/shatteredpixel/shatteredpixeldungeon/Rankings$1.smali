.class public final Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$1;
.super Ljava/lang/Object;
.source "Rankings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;

    .line 2
    iget v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->score:I

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->score:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    if-nez v0, :cond_0

    .line 3
    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->gameID:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->gameID:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-int v0, p1

    :cond_0
    return v0
.end method

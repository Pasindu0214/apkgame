.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;
.super Ljava/lang/Object;
.source "Notes.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/watabou/utils/Bundlable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;",
        ">;",
        "Lcom/watabou/utils/Bundlable;"
    }
.end annotation


# instance fields
.field public depth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;

    .line 2
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;->depth()I

    move-result p1

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;->depth()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public depth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;->depth:I

    return v0
.end method

.method public abstract desc()Ljava/lang/String;
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    const-string v0, "depth"

    .line 1
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;->depth:I

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;->depth:I

    const-string v1, "depth"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method

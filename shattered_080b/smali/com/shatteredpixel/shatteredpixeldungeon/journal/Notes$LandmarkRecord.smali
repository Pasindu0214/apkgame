.class public Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$LandmarkRecord;
.super Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;
.source "Notes.java"


# instance fields
.field public landmark:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$LandmarkRecord;->landmark:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;

    .line 4
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;->depth:I

    return-void
.end method


# virtual methods
.method public desc()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$LandmarkRecord;->landmark:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$LandmarkRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$LandmarkRecord;->landmark:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$LandmarkRecord;

    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$LandmarkRecord;->landmark:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;->depth:I

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;->depth:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "landmark"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;->valueOf(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$LandmarkRecord;->landmark:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Record;->depth:I

    const-string v1, "depth"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$LandmarkRecord;->landmark:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "landmark"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

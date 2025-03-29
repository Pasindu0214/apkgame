.class public final Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$1;
.super Ljava/lang/Object;
.source "GamesInProgress.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;",
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
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;

    .line 2
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->level:I

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->maxDepth:I

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x64

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->goldCollected:I

    add-int/2addr v0, p1

    .line 3
    iget p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->level:I

    iget v1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->maxDepth:I

    mul-int p1, p1, v1

    mul-int/lit8 p1, p1, 0x64

    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->goldCollected:I

    add-int/2addr p1, p2

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

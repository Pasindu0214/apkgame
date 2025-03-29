.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfDisarming$1;
.super Ljava/lang/Object;
.source "StoneOfDisarming.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfDisarming;->activate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$cell:I


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfDisarming;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfDisarming$1;->val$cell:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfDisarming$1;->val$cell:I

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    invoke-virtual {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result p1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfDisarming$1;->val$cell:I

    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    invoke-virtual {v0, v1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->trueDistance(II)F

    move-result p2

    sub-float/2addr p1, p2

    const/4 p2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    cmpg-float v2, p1, v0

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    const/4 p1, 0x2

    .line 3
    invoke-static {p1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    return p2
.end method

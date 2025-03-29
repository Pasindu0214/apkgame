.class public final Lcom/shatteredpixel/shatteredpixeldungeon/items/Item$1;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
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
    .locals 0

    .line 1
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    check-cast p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->order(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)I

    move-result p1

    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->order(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

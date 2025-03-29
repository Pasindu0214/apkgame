.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;
.source "QuickRecipe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;Ljava/util/ArrayList;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$in:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$1;->val$in:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;-><init>()V

    .line 3
    invoke-virtual {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1
    sget-object v0, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v0, v0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 2
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoItem;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$1;->val$in:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-direct {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoItem;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->addToFront(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

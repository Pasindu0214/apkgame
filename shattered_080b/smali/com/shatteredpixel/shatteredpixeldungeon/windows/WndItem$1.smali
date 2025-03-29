.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "WndItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;

.field public final synthetic val$action:Ljava/lang/String;

.field public final synthetic val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

.field public final synthetic val$owner:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;Ljava/lang/String;ILcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;

    iput-object p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem$1;->val$owner:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    iput-object p5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem$1;->val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    iput-object p6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem$1;->val$action:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem;->hide()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem$1;->val$owner:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;->hide()V

    .line 3
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem$1;->val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndItem$1;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

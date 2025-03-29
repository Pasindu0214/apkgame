.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$4;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;
.source "AlchemyScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$4;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$4;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoItem;

    invoke-direct {v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoItem;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Group;->addToFront(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :cond_0
    return-void
.end method

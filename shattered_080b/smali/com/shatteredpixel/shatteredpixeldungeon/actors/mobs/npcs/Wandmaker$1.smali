.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker$1;
.super Ljava/lang/Object;
.source "Wandmaker.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker;->interact(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker;

.field public final synthetic val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker;

    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker$1;->val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndWandmaker;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker$1;->val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-direct {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndWandmaker;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    return-void
.end method

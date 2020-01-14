INC_DIR = lib
BUILD_DIR = build
OBJ_DIR = obj
SRC_DIR = src
ARM_CC  = armv8-rpi3-linux-gnueabihf-gcc
#CC = armv8-rpi3-linux-gnueabihf-gcc
INC = $(addprefix -I, $(INC_DIR))
SRC = $(notdir $(wildcard $(SRC_DIR)/*.c))
OBJ = $(SRC:%.c=$(OBJ_DIR)/%.o)
CFLAGS := -Wall

all: prebuild prog

rpi3: CC = $(ARM_CC)	

rpi3: prebuild prog
	
	
prog: $(OBJ)
	$(CC) $(CFLAGS) $^ -o $(BUILD_DIR)/$@

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) $(INC) -c $< -o $@

prebuild: 
	@-mkdir -p $(BUILD_DIR) $(OBJ_DIR)

clean:
	@-rm -rf $(OBJ_DIR)/*.o $(SRC_DIR)/*.o $(BUILD_DIR)


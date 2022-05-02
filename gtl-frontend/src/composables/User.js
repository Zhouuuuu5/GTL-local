import { StorageSerializers, useStorage } from '@vueuse/core';
import { computed } from 'vue'

export const user = useStorage("userAccount", null, undefined, {
    serializer: StorageSerializers.object
})

export const afterLogin = (id, name) => {
    user.value = {
        id: id,
        username: name
    }
};

export const isLogin = computed(() => user.value?.id);